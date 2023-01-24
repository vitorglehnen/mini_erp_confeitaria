unit MiniErpConfeitaria.Model.DAO.Rest;

interface

uses
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  MiniErpConfeitaria.Model.DAO.Interfaces,
  RestRequest4D,
  Vcl.Forms,
  Bind4D;

type
  TDAORest = class(TInterfacedObject, iDAOInterface)
    private
      FDMemTable : TFDMemTable;
      FBaseUrl : String;
      FEndPoint, FPK, FOrder, FSort : String;
      FForm : TForm;
      function PreparaGuuid (aValue : String) : String;
    public
      constructor Create(aForm : TForm);
      destructor Destroy; override;
      class function New(aForm : TForm) : iDAOInterface;
      function Get : iDAOInterface;
      function Post : iDAOInterface;
      function Put : iDAOInterface;
      function Delete : iDAOInterface;
      function DataSource ( aValue : TDataSource ) : iDAOInterface;
      function DataSet : TDataSet;
  end;

implementation

uses
  System.SysUtils, System.JSON, Bind4D.Types;


{ TDAORest }

constructor TDAORest.Create(aForm : TForm);
begin
  FDMemTable := TFDMemTable.Create(nil);
  FBaseUrl := 'http://localhost:9000';
  FForm := aForm;

  TBind4D
    .New
      .Form(FForm)
      .BindFormRest(
        FEndPoint,
        FPK,
        FOrder,
        FSort
      );
end;

function TDAORest.DataSet: TDataSet;
begin
  Result := FDMemTable;
end;

function TDAORest.DataSource(aValue: TDataSource): iDAOInterface;
begin
  Result := Self;
  aValue.DataSet := FDMemTable;
end;

function TDAORest.Delete: iDAOInterface;
begin
  Result := Self;

  TRequest
    .New
      .BaseUrl(FBaseUrl + FEndPoint + '/' + PreparaGuuid(FDMemTable.FieldByName(FPK).AsString))
      .Accept('application/json')
    .Delete;
end;

destructor TDAORest.Destroy;
begin
  FDMemTable.free;
  inherited;
end;

function TDAORest.Get: iDAOInterface;
begin
  TRequest
    .New
      .BaseURL(FBaseUrl + FEndPoint)
      .Accept('application/json')
      .DataSetAdapter(FDMemTable)
    .Get;
end;

class function TDAORest.New(aForm : TForm) : iDAOInterface;
begin
  Result := Self.Create(aForm);
end;

function TDAORest.Post: iDAOInterface;
var
  aJson : TJsonObject;
begin
  Result := Self;
  aJson := TBind4D.New.Form(FForm).FormToJson(fbPost);
  try
    TRequest
      .New
        .BaseURL(FBaseUrl + FEndPoint)
        .Accept('application/json')
        .AddBody(aJson.ToString)
      .Post;
  finally
    aJson.Free;
  end;
end;

function TDAORest.PreparaGuuid(aValue: String): String;
begin
  Result := StringReplace(aValue, '{', '', [rfReplaceAll]);
  Result := StringReplace(aValue, '}', '', [rfReplaceAll]);
end;

function TDAORest.Put: iDAOInterface;
var
  aJson : TJsonObject;
begin
  Result := Self;
  aJson := TBind4D.New.Form(FForm).FormToJson(fbPost);
  try
    TRequest
      .New
        .BaseURL(FBaseUrl + FEndPoint + '/' + PreparaGuuid(FDMemTable.FieldByName(FPK).AsString))
        .Accept('application/json')
        .AddBody(aJson.ToString)
      .Put;
  finally
    aJson.Free;
  end;
end;

end.
