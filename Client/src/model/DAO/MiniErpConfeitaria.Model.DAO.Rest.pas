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
  Bind4D,
  System.SysUtils,
  System.JSON,
  Bind4D.Types,
  System.Generics.Collections,
  DataSet.Serialize;

type
  TDAORest = class(TInterfacedObject, iDAOInterface)
    private
      FDMemTable : TFDMemTable;
      FBaseUrl : String;
      FEndPoint, FPK, FOrder, FSort : String;
      FForm : TForm;
      FLimit : Integer;
      FTotal : Integer;
      FPages : Integer;
      FPage : Integer;
      FParamList : TDictionary<String, String>;
      FToken : String;
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
      function AddParam (aKey : String; aValue : String) : iDAOInterface;
      function Page : Integer; overload;
      function Page ( aValue : Integer) : IDAOInterface; overload;
      function Limit : Integer; overload;
      function Limit ( aValue : Integer) : IDAOInterface; overload;
      function Total : Integer; overload;
      function Total ( aValue : Integer) : IDAOInterface; overload;
      function Pages : Integer; overload;
      function Pages ( aValue : Integer) : IDAOInterface; overload;
  end;

implementation

uses
  LocalCache4D;


{ TDAORest }

function TDAORest.AddParam(aKey, aValue: String): iDAOInterface;
begin
  Result := Self;
  FParamList.Add(aKey, aValue);
end;

constructor TDAORest.Create(aForm : TForm);
begin
  FDMemTable := TFDMemTable.Create(nil);
  FParamList := TDictionary<String, String>.Create;
  FBaseUrl := 'http://localhost:9000';
  FForm := aForm;
  FPage := 1;
  FLimit := 10;
  FToken := LocalCache.Instance('auth').GetItem('token');

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
      .Token('Bearer ' + FToken)
    .Delete;
end;

destructor TDAORest.Destroy;
begin
  FDMemTable.Free;
  FParamList.Free;
  inherited;
end;

function TDAORest.Get: iDAOInterface;
var
  aURL : String;
  aJsonResult : TJsonObject;
  aResult : String;
begin
  aURL := FBaseUrl + FEndPoint + '?';

  if FParamList.Count > 0 then
  begin
    for var Param in FParamList do
      aURL := aURL + Param.Key + '=' + Param.Value + '&';
  end;

  aUrl := aURL + 'limit='+IntToStr(FLimit)+'&page='+IntToStr(FPage);

  aResult :=
    TRequest
      .New
        .BaseURL(aURL)
        .Accept('application/json')
        .Token('Bearer ' + FToken)
        .AddHeader('X-PAGINATE', 'true')
      .Get
    .Content;

  aJsonResult := TJSONObject.ParseJSONValue(aResult) as TJsonObject;
  try
    FDMemTable.Close;
    FDMemTable.DisableControls;
    FTotal := aJsonResult.GetValue<Integer>('total');
    FLimit := aJsonResult.GetValue<Integer>('limit');
    FPage := aJsonResult.GetValue<Integer>('page');
    FPages := aJsonResult.GetValue<Integer>('pages');
    FDMemTable.LoadFromJSON(aJsonResult.GetValue<TJsonArray>('docs'), False);
    FDMemTable.EnableControls;
  finally
    aJsonResult.Free;
  end;

  FParamList.Clear;
end;

function TDAORest.Limit(aValue: Integer): IDAOInterface;
begin
  Result := Self;
  FLimit := aValue;
end;

function TDAORest.Limit: Integer;
begin
  Result := FLimit;
end;

class function TDAORest.New(aForm : TForm) : iDAOInterface;
begin
  Result := Self.Create(aForm);
end;

function TDAORest.Page(aValue: Integer): IDAOInterface;
begin
  Result := Self;
  FPage := aValue;
end;

function TDAORest.Pages: Integer;
begin
  Result := FPages;
end;

function TDAORest.Pages(aValue: Integer): IDAOInterface;
begin
  Result := Self;
  FPages := aValue;
end;

function TDAORest.Page: Integer;
begin
  Result := FPage;
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
        .Token('Bearer ' + FToken)
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
        .Token('Bearer ' + FToken)
        .AddBody(aJson.ToString)
      .Put;
  finally
    aJson.Free;
  end;
end;

function TDAORest.Total: Integer;
begin
  Result := FTotal;
end;

function TDAORest.Total(aValue: Integer): IDAOInterface;
begin
  Result := Self;
  FTotal := aValue;
end;

end.
