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

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlMain: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlLogin: TStackPanel;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblSenha: TLabel;
    edtSenha: TEdit;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlInvisivel: TPanel;

    chkMostrarSenhaLogin: TCheckBox;
    lblEsqueceuSenha: TLabel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlInvisivel2: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlInvisivel3: TPanel;
    btnCadastrarUsuario: TPanel;
    btnEntrar: TButton;
    procedure chkMostrarSenhaLoginClick(Sender: TObject);
    procedure lblEsqueceuSenhaMouseEnter(Sender: TObject);
    procedure lblEsqueceuSenhaMouseLeave(Sender: TObject);
    procedure btnCadastrarUsuarioClick(Sender: TObject);
    procedure lblEsqueceuSenhaClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure btnEntrarKeyPress(Sender: TObject; var Key: Char);

  private
    procedure AjustaForm;
    procedure ValidaEntrada;
    procedure TabEnter(Sender: TObject; var Key: Char);
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  PageLogin: TPageLogin;

implementation

uses
  Router4D,
  MiniErpConfeitaria.View.Pages.Form.Login,
  RESTRequest4D,
  System.JSON,
  LocalCache4D;

{$R *.dfm}

procedure TPageLogin.btnCadastrarUsuarioClick(Sender: TObject);
begin
  TRouter4D.Link.&To('LoginCadastro');
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

procedure TPageLogin.edtEmailKeyPress(Sender: TObject; var Key: Char);
begin
  TabEnter(Sender, key);
end;

procedure TPageLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  TabEnter(Sender, key);
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

procedure TPageLogin.btnEntrarClick(Sender: TObject);
begin
  ValidaEntrada;
end;

procedure TPageLogin.btnEntrarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    ValidaEntrada;
  end;
end;

function TPageLogin.Render: TForm;
begin
  Result := Self;
end;

procedure TPageLogin.TabEnter(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    SelectNext(Sender as TWinControl, True, True);
  end;
end;

procedure TPageLogin.UnRender;
begin

end;

procedure TPageLogin.ValidaEntrada;
var
  aJson : TJsonObject;
  aResult : IResponse;
begin
  aJson := TJsonObject.Create;
  try
    try
      aJson
        .AddPair('email', edtEmail.text)
        .AddPair('password', edtSenha.text);

        aResult :=
        TRequest
          .New
            .BaseURL('http://localhost:9005/users/auth')
            .Accept('application/json')
            .AddBody(aJson.ToString)
          .Post;

        LocalCache.instance('auth').SetItem('token', aResult.JSONValue.GetValue<string>('token'));
        LocalCache.SaveToStorage();
      AjustaForm;
      TRouter4D.Link.IndexLink('Principal');
    except
      ShowMessage('Usuário não encontrado');
      edtEmail.SetFocus;
    end;
  finally
    aJson.Free;
  end;
end;

procedure TPageLogin.AjustaForm;
begin
  FormLogin.WindowState := TWindowState.wsMaximized;
  FormLogin.BorderIcons := [biSystemMenu, biMinimize, bimaximize];
end;

end.
