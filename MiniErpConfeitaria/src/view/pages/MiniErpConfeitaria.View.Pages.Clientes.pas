unit MiniErpConfeitaria.View.Pages.Clientes;

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
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.ComCtrls,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  Data.DB,
  System.ImageList,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  MIniErpConfeitaria.View.Styles.Colors,
  MiniErpConfeitaria.View.Pages.Form.Template, Vcl.Mask;

type
  [FormRest('/users', 'guuid', 'name', 'asc')]
  [FormDefault('Clientes')]

  TPageClientes = class(TFormTemplate)

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlLeftCadastro: TStackPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlRightCadastro: TStackPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlBodyAcoes: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlBodyImgCliente: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR)]
    pnlImgCliente: TPanel;

    [FieldJsonBind('guuid'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('guuid', ftString, False, 0, 'Código')]
    edtCodigo: TEdit;

    [FieldJsonBind('idoccupation')]
    [FieldDataSetBind('idoccupation', ftString, False, 0, 'Código da profissão')]
    edtCodigoOcupacao: TEdit;

    [FieldJsonBind('name')]
    [FieldDataSetBind('name', ftString, True, 20, 'Nome', '', taLeftJustify)]
    [fvNotNull('Campo Nome não pode ser Nulo', COLOR_BACKGROUND)]
    edtNome: TEdit;

    [FieldJsonBind('phone')]
    [FieldDataSetBind('phone', ftString, True, 10, 'Telefone', '!\(##\) #####-####;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_EDIT, FONT_COLOR, FONT_NAME, teCell)]
    edtTelefone: TEdit;

    [FieldJsonBind('balance')]
    [FieldDataSetBind('balance', ftCurrency, True, 5, 'Saldo', 'R$ ###,###,##0.00', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_EDIT, FONT_COLOR, FONT_NAME, teCoin)]
    edtSaldo: TEdit;

    [FieldJsonBind('birthdate')]
    [FieldDataSetBind('birthdate', ftDate, True, 10, 'Data Nasc', '##/##/####;0;_', taLeftJustify)]
    dateNascimento: TDateTimePicker;

    [FieldJsonBind('lasttransaction')]
    [FieldDataSetBind('lasttransaction', ftTime, False, 7, 'Ult. Trans', '##:##:##;0;_', taLeftJustify)]
    dateUltimaTransacao: TDateTimePicker;

    [FieldJsonBind('cpf')]
    [FieldDataSetBind('cpf', ftString, True, 10, 'CPF', '###.###.###-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME, teCPF)]
    edtCpf: TEdit;

    [FieldJsonBind('cnpj')]
    [FieldDataSetBind('cnpj', ftString, False, 16, 'CNPJ', '##.###.###/####-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME, teCNPJ)]
    edtCnpj: TEdit;

    [FieldJsonBind('occupation')]
    [FieldDataSetBind('occupation', ftString, True, 10, 'Profissão', '', taLeftJustify)]
    edtProfissao: TEdit;

    [FieldJsonBind('picture')]
    [FieldDataSetBind('picture', ftBlob, False, 0, 'Foto')]
    imgCliente: TImage;

    lblCodigo: TLabel;
    lblNome: TLabel;
    lblTelefone: TLabel;
    lblProfissao: TLabel;
    lblSaldo: TLabel;
    lblDataNascimento: TLabel;
    lblUltimaTransacao: TLabel;
    lblCpf: TLabel;
    lblCnpj: TLabel;
    lblCodigoOcupacao: TLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageClientes: TPageClientes;

implementation

{$R *.dfm}



end.
