unit MiniErpConfeitaria.Src.View.Pages.Form.Template;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Router4D.Interfaces,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  MIniErpConfeitaria.Src.View.Styles.Colors,
  RESTRequest4D, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormTemplate = class(TForm, iRouter4DComponent)
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlMain: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlTop: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlCenter: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlCabecalho: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlBodyData: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlBodyPesquisa: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlLinhaPesquisa: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlLinhaNomePagina: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlCadastro: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_COLOR, FONT_COLOR)]
    pnlBodyBotao: TPanel;
    DBGrid1: TDBGrid;
    lstImagens: TImageList;
    edtPesquisa: TEdit;
    lblPesquisa: TLabel;
    btnCadastro: TSpeedButton;
    lblNomePagina: TLabel;
    btnAtualizar: TSpeedButton;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;

    procedure FormCreate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    FEndPoint, FPK, FSort, FOrder, FTitle : String;
    procedure ApplyStyle;
    procedure GetEndPoint;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  FormTemplate : TFormTemplate;

implementation


{$R *.dfm}

{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin
  lblNomePagina.Caption := FTitle;

  pnlCadastro.Visible := False;
end;

procedure TFormTemplate.btnAtualizarClick(Sender: TObject);
begin
  pnlCadastro.Visible := not pnlCadastro.Visible;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  TBind4D
    .New
      .Form(Self)
      .BindFormDefault(FTitle)
      .BindFormRest(FEndPoint, FPK, FSort, FOrder)
      .SetStyleComponents;
  ApplyStyle;
  GetEndPoint;
end;

procedure TFormTemplate.GetEndPoint;
begin
  TRequest
    .New
      .BaseURL('http://localhost:9000' + FEndPoint)
      .Accept('application/json')
      .DataSetAdapter(FDMemTable1)
    .Get;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.UnRender;
begin
  //
end;

end.
