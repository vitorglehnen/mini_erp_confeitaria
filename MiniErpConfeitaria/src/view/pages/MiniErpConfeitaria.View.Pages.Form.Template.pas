unit MiniErpConfeitaria.View.Pages.Form.Template;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  Data.DB,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  Vcl.ImgList,
  System.JSON,

  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  Router4D.Interfaces,
  MiniErpConfeitaria.Model.DAO.Rest,
  MIniErpConfeitaria.View.Styles.Colors,
  RESTRequest4D,
  MiniErpConfeitaria.Model.DAO.Interfaces;

type
  TTypeOperation = (toNull, toPost, toPut);

  TFormTemplate = class(TForm, iRouter4DComponent)
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlMain: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlCenter: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlCabecalho: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlBodyData: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlLinhaPesquisa: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlPesquisa: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlLinhaNomePagina: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlCadastro: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlBodyBotao: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlBodyPesquisa: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_TITLE, FONT_COLOR)]
    lblNomePagina: TLabel;

    lblPesquisa: TLabel;

    btnAtualizar: TSpeedButton;
    btnCadastro: TSpeedButton;

    DBGrid1: TDBGrid;
    DataSource1: TDataSource;

    [ComponentBindStyle(COLOR_EDIT, FONT_SIZE_EDIT, FONT_COLOR)]
    edtPesquisa: TEdit;
    pnlAcoes: TPanel;
    btFechar: TSpeedButton;
    btSalvar: TSpeedButton;
    btExcluir: TSpeedButton;
    pnlBotoesPagina: TPanel;
    btnVoltarPagina: TSpeedButton;
    btnProximaPagina: TSpeedButton;
    lblNumeroPagina: TLabel;
    lstImagens: TImageList;

    procedure FormCreate(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnProximaPaginaClick(Sender: TObject);
    procedure btnVoltarPaginaClick(Sender: TObject);

  private
    { Private declarations }
    FTypeOperation : TTypeOperation;
    FEndPoint, FPK, FSort, FOrder, FTitle : String;
    FDAO : IDAOInterface;
    procedure ApplyStyle;
    procedure GetData;
    procedure formataLista;
    procedure AlteraForm;
    procedure restOperationPost;
    procedure restOperationPut;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;


implementation


{$R *.dfm}

{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin
  lblNomePagina.Caption := FTitle;
  DBGrid1.Align := AlClient;
  pnlCadastro.Visible := False;
  pnlCadastro.Align := AlClient;
end;

procedure TFormTemplate.btExcluirClick(Sender: TObject);
begin
  FDAO.Delete;
  GetData;
  AlteraForm;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.btFecharClick(Sender: TObject);
begin
  AlteraForm;
  TBind4D
    .New
      .Form(self)
      .ClearFieldForm;

  FTypeOperation := toNull;
end;

procedure TFormTemplate.btnCadastroClick(Sender: TObject);
begin
  FTypeOperation := toPost;
  AlteraForm;
  formataLista;

  TBind4D
    .New
      .Form(Self)
      .ClearFieldForm;
end;

procedure TFormTemplate.btnProximaPaginaClick(Sender: TObject);
begin
  if FDAO.Page < FDAO.Pages then
  begin
    FDAO.Page(FDAO.Page + 1);
    GetData;
  end;
end;

procedure TFormTemplate.btnVoltarPaginaClick(Sender: TObject);
begin
  if FDAO.Page > 1 then
  begin
    FDAO.Page(FDAO.Page - 1);
    GetData;
  end;
end;

procedure TFormTemplate.btSalvarClick(Sender: TObject);
begin
  case FTypeOperation of
    toPost : restOperationPost;
    toPut: restOperationPut;
  end;

  AlteraForm;
end;

procedure TFormTemplate.DBGrid1DblClick(Sender: TObject);
begin
  FTypeOperation := toPut;
  TBind4D
    .New
      .Form(self)
      .BindDataSetToForm(FDAO.DataSet);

  AlteraForm;
end;

procedure TFormTemplate.DBGrid1TitleClick(Column: TColumn);
begin
  FDAO
    .AddParam('sort', Column.Field.FullName)
    .AddParam('order', FOrder)
  .Get;

  if FOrder = 'asc' then FOrder := 'desc' else FOrder := 'asc';
  formataLista;
end;

procedure TFormTemplate.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #$D then
  begin
    FDAO
      .AddParam('sort', FSort)
      .AddParam('order', FOrder)
      .AddParam('searchfields', 'name')
      .AddParam('searchvalue', edtPesquisa.Text)
    .Get;

    FormataLista;
  end;

end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  FTypeOperation := toNull;
  FDAO := TDAOREST.New(Self).DataSource(DataSource1);

  TBind4D
    .New
      .Form(Self)
      .BindFormDefault(FTitle)
      .BindFormRest(FEndPoint, FPK, FSort, FOrder)
      .SetStyleComponents;

  formataLista;
  ApplyStyle;
end;

procedure TFormTemplate.FormResize(Sender: TObject);
begin
  GetData;
end;

procedure TFormTemplate.GetData;
begin
  FDAO
    .AddParam('sort', FSort)
    .AddParam('order', FOrder)
    .Page(FDAO.Page)
  .Get;

  formataLista;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.restOperationPost;
begin
  FDAO.Post;
  GetData;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.restOperationPut;
begin
  FDAO.Put;
  GetData;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.UnRender;
begin

end;

procedure TFormTemplate.AlteraForm;
begin
  pnlCadastro.Visible := not pnlCadastro.Visible;
end;

procedure TFormTemplate.formataLista;
begin
  TBind4D
    .New
      .Form(self)
      .BindFormatListDataSet(FDAO.DataSet, DBGrid1);

  lblNumeroPagina.Caption := 'Página ' + IntToStr(FDAO.Page) + ' de ' + IntToStr(FDAO.Pages);
end;

end.
