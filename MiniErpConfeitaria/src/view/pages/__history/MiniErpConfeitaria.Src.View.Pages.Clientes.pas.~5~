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

    [FieldJsonBind('name')]
    [FieldDataSetBind('name', ftString, True, 35, 'Nome')]
    edtNome: TEdit;

    [FieldJsonBind('phone')]
    [FieldDataSetBind('phone', ftString, True, 35, 'Telefone', '!\(##\) #####-####;0;_')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_EDIT, FONT_COLOR, FONT_NAME, tecell)]
    edtTelefone: TEdit;

    [FieldJsonBind('occupation')]
    [FieldDataSetBind('occupation', ftString, True, 10, 'Profissão')]
    edtProfissao: TEdit;

    [FieldJsonBind('balance')]
    [FieldDataSetBind('balance', ftCurrency, True, 10, 'Saldo', 'R$ ###,###,##0.00', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_EDIT, FONT_COLOR, FONT_NAME, teCoin)]
    edtSaldo: TEdit;

    [FieldJsonBind('birthdate')]
    [FieldDataSetBind('birthdate', ftDate, True, 10, 'Data Nasc', '##/##/####;0;_', taLeftJustify)]
    dateNascimento: TDateTimePicker;

    [FieldJsonBind('lasttransaction')]
    [FieldDataSetBind('lasttransaction', ftTime, True, 5, 'Ult. Trans', '##/##/####;0;_', taLeftJustify)]
    dateUltimaTransacao: TDateTimePicker;

    [FieldJsonBind('cpf')]
    [FieldDataSetBind('cpf', ftString, True, 10, 'CPF', '###.###.###-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME, teCPF)]
    edtCpf: TEdit;

    [FieldJsonBind('cnpj')]
    [FieldDataSetBind('cnpj', ftString, True, 10, 'CNPJ', '##.###.###/####-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME, teCNPJ)]
    edtCnpj: TEdit;

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
    pnlAcoes: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;



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
