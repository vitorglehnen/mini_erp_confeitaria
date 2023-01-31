unit MiniErpConfeitaria.View.Pages.Form.Login;

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

  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  Router4D.Interfaces,
  MiniErpConfeitaria.Model.DAO.Rest,
  MIniErpConfeitaria.View.Styles.Colors,
  RESTRequest4D,
  MiniErpConfeitaria.Model.DAO.Interfaces, Vcl.StdCtrls, Vcl.WinXPanels,
  Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TLogin = class(TForm)
    pnlMain: TPanel;

    [ComponentBindStyle(COLOR_TOP, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlEsquerdoLogin: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlDireitoLogin: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlInvisivel: TPanel;
    pnlLogin: TStackPanel;
    lblUsuario: TLabel;
    edtUsuario: TEdit;
    lblSenha: TLabel;
    edtSenha: TEdit;
    btnEntrar: TSpeedButton;
    lblEsqueceuSenha: TLabel;
    pnlInvisivel2: TPanel;
    btnCadastrarNovoUsuario: TSpeedButton;
    imgLogo: TImage;
    cardpnlMain: TCardPanel;
    cardLogin: TCard;
    cardEsqueceuSenha: TCard;
    StackPanel1: TStackPanel;
    lblUsuarioEsqueceuSenha: TLabel;
    edtUsuarioEsqueceuSenha: TEdit;
    lblEmailEsqueceuSenha: TLabel;
    edtEmailEsqueceuSenha: TEdit;
    pnlInvisivel5: TPanel;
    btnEnviarEmail: TSpeedButton;
    pnlInvisivel6: TPanel;
    cardNovoUsuario: TCard;
    StackPanel2: TStackPanel;
    lblEmailCadastro: TLabel;
    edtEmailCadastro: TEdit;
    lblConfirmarSenhaCadastro: TLabel;
    edtConfirmarSenhaCadastro: TEdit;
    pnlInvisivel3: TPanel;
    btnCadastrarUsuario: TSpeedButton;
    pnlInvisivel4: TPanel;
    lblUsuarioCadastro: TLabel;
    edtUsuarioCadastro: TEdit;
    edtSenhaCadastro: TEdit;
    lblSenhaCadastro: TLabel;
    pnlBotoes: TPanel;

    [ImageAttribute('ico_cancelar')]
    btnFechar: TSpeedButton;

    procedure FormCreate(Sender: TObject);
    procedure lblEsqueceuSenhaMouseEnter(Sender: TObject);
    procedure lblEsqueceuSenhaMouseLeave(Sender: TObject);
    procedure lblEsqueceuSenhaClick(Sender: TObject);
    procedure btnCadastrarNovoUsuarioClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cardpnlMainCardChange(Sender: TObject; PrevCard, NextCard: TCard);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

{$R *.dfm}


procedure TLogin.btnCadastrarNovoUsuarioClick(Sender: TObject);
begin
  cardpnlMain.ActiveCard := cardNovoUsuario;
end;

procedure TLogin.btnFecharClick(Sender: TObject);
begin
  cardpnlMain.ActiveCard := cardLogin;
end;

procedure TLogin.cardpnlMainCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  if cardpnlMain.ActiveCard = cardLogin then
  begin
    pnlBotoes.Visible := False;
  end
  else
  begin
    pnlBotoes.Visible := True;
  end;
end;

procedure TLogin.FormCreate(Sender: TObject);
begin
  TBind4D
    .New
      .Form(Self)
      .SetImageComponents
      .SetStyleComponents;
end;

procedure TLogin.FormResize(Sender: TObject);
begin
  if cardpnlMain.ActiveCard = cardLogin then
    btnFechar.Visible := False;

  btnFechar.Visible := True;
end;

procedure TLogin.lblEsqueceuSenhaClick(Sender: TObject);
begin
  cardpnlMain.ActiveCard := cardEsqueceuSenha;
end;

procedure TLogin.lblEsqueceuSenhaMouseEnter(Sender: TObject);
begin
  lblEsqueceuSenha.Font.Color := clWindowFrame;
end;

procedure TLogin.lblEsqueceuSenhaMouseLeave(Sender: TObject);
begin
  lblEsqueceuSenha.Font.Color := clWindowText;
end;

end.
