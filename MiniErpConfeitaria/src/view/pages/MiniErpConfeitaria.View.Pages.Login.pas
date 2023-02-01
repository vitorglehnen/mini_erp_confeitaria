unit MiniErpConfeitaria.View.Pages.Login;

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
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Router4D.Interfaces;

type
  TPageLogin = class(TForm, iRouter4DComponent)

    pnlMain: TPanel;
    pnlLogin: TStackPanel;
    lblUsuario: TLabel;
    edtUsuario: TEdit;
    lblSenha: TLabel;
    edtSenha: TEdit;
    pnlInvisivel: TPanel;
    chkMostrarSenhaLogin: TCheckBox;
    btnEntrar: TSpeedButton;
    lblEsqueceuSenha: TLabel;
    pnlInvisivel2: TPanel;
    btnCadastrarNovoUsuario: TSpeedButton;
    btnCadastrarUsuario: TSpeedButton;
    pnlInvisivel3: TPanel;
    procedure chkMostrarSenhaLoginClick(Sender: TObject);
    procedure lblEsqueceuSenhaMouseEnter(Sender: TObject);
    procedure lblEsqueceuSenhaMouseLeave(Sender: TObject);
    procedure btnCadastrarUsuarioClick(Sender: TObject);
    procedure lblEsqueceuSenhaClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  PageLogin: TPageLogin;

implementation

uses
  Router4D, MiniErpConfeitaria.View.Pages.Index,
  MiniErpConfeitaria.View.Pages.Form.Login;

{$R *.dfm}

procedure TPageLogin.btnCadastrarUsuarioClick(Sender: TObject);
begin
  TRouter4D.Link.&To('LoginCadastro');
end;

procedure TPageLogin.btnEntrarClick(Sender: TObject);
begin
  FormLogin.WindowState := TWindowState.wsMaximized;
  TRouter4D.Link.IndexLink('Principal');
end;

procedure TPageLogin.chkMostrarSenhaLoginClick(Sender: TObject);
begin
  if chkMostrarSenhaLogin.Checked then
  begin
    edtSenha.PasswordChar := #0;
  end
  else
  begin
    edtSenha.PasswordChar := '*';
  end;
end;

procedure TPageLogin.lblEsqueceuSenhaClick(Sender: TObject);
begin
  TRouter4D.Link.&To('LoginSenha');
end;

procedure TPageLogin.lblEsqueceuSenhaMouseEnter(Sender: TObject);
begin
  lblEsqueceuSenha.Font.Color := clWindowFrame;
end;

procedure TPageLogin.lblEsqueceuSenhaMouseLeave(Sender: TObject);
begin
  lblEsqueceuSenha.Font.Color := clWindowText;
end;

function TPageLogin.Render: TForm;
begin
  Result := Self;
end;

procedure TPageLogin.UnRender;
begin

end;

end.
