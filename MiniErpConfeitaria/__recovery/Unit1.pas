unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    pnlMain: TPanel;
    pnlTop: TPanel;
    pnlCabecalho: TPanel;
    lblNomePagina: TLabel;
    pnlLinhaNomePagina: TPanel;
    pnlBodyBotao: TPanel;
    btnAtualizar: TSpeedButton;
    btnCadastro: TSpeedButton;
    pnlCenter: TPanel;
    pnlBodyData: TPanel;
    DBGrid1: TDBGrid;
    pnlBodyPesquisa: TPanel;
    pnlPesquisa: TPanel;
    lblPesquisa: TLabel;
    edtPesquisa: TEdit;
    pnlLinhaPesquisa: TPanel;
    pnlBotoesPagina: TPanel;
    btnVoltarPagina: TSpeedButton;
    btnProximaPagina: TSpeedButton;
    lblNumeroPagina: TLabel;
    pnlCadastro: TPanel;
    pnlAcoes: TPanel;
    btFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btExcluir: TSpeedButton;
    CardPanel1: TCardPanel;
    Card1: TCard;
    Card2: TCard;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
