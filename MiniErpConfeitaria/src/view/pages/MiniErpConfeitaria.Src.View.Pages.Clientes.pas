unit MiniErpConfeitaria.Src.View.Pages.Clientes;

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
  MiniErpConfeitaria.Src.View.Pages.Form.Template,
  Vcl.ExtCtrls,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  Vcl.StdCtrls,
  Data.DB,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.WinXPanels,
  MIniErpConfeitaria.Src.View.Styles.Colors, Vcl.ComCtrls;

type
  [FormRest('/users', 'guuid', 'name', 'asc')]
  [FormDefault('Clientes')]

  TPageClientes = class(TFormTemplate)
    pnlLeftCadastro: TStackPanel;
    pnlRightCadastro: TStackPanel;

    [FieldJsonBind('guuid'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('guuid', ftString, False, 0, 'Código')]
    edtCodigo: TEdit;

    [FieldJsonBind('idoccupation')]
    [FieldDataSetBind('idoccupation', ftString, False, 0, 'Código da profissão')]
    edtCodigoOcupacao: TEdit;

    [FieldJsonBind('name')]
    [FieldDataSetBind('name', ftString, True, 24, 'Nome')]
    edtNome: TEdit;

    [FieldJsonBind('phone')]
    [FieldDataSetBind('phone', ftString, True, 14, 'Telefone', '!\(##\) #####-####;0;_')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_EDIT, FONT_COLOR, FONT_NAME, tecell)]
    edtTelefone: TEdit;

    [FieldJsonBind('balance')]
    [FieldDataSetBind('balance', ftCurrency, True, 9, 'Saldo', 'R$ ###,###,##0.00', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_EDIT, FONT_COLOR, FONT_NAME, teCoin)]
    edtSaldo: TEdit;

    [FieldJsonBind('birthdate')]
    [FieldDataSetBind('birthdate', ftDate, True, 9, 'Data Nasc', '##/##/####;0;_', taLeftJustify)]
    dateNascimento: TDateTimePicker;

    [FieldJsonBind('lasttransaction')]
    [FieldDataSetBind('lasttransaction', ftTime, True, 9, 'Ult. Trans', '##:##:##;0;_', taLeftJustify)]
    dateUltimaTransacao: TDateTimePicker;

    [FieldJsonBind('cpf')]
    [FieldDataSetBind('cpf', ftString, True, 15, 'CPF', '###.###.###-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME, teCPF)]
    edtCpf: TEdit;

    [FieldJsonBind('cnpj')]
    [FieldDataSetBind('cnpj', ftString, True, 15, 'CNPJ', '##.###.###/####-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME, teCNPJ)]
    edtCnpj: TEdit;

    [FieldJsonBind('occupation')]
    [FieldDataSetBind('occupation', ftString, True, 10, 'Profissão')]
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
    pnlBodyAcoes: TPanel;
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
