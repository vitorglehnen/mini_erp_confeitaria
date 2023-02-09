unit MiniErpConfeitaria.View.Pages.Login.Cadastro;

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
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.ExtCtrls,

  Router4D.Interfaces;

type
  TPageLoginCadastro = class(TForm, iRouter4DComponent)

    pnlMain: TPanel;
    stkpnlPrincipal: TStackPanel;
    lblEmailCadastro: TLabel;
    edtEmailCadastro: TEdit;
    lblUsuarioCadastro: TLabel;
    edtUsuarioCadastro: TEdit;
    lblSenhaCadastro: TLabel;
    edtSenhaCadastro: TEdit;
    lblConfirmarSenhaCadastro: TLabel;
    edtConfirmarSenhaCadastro: TEdit;
    pnlInvisivel3: TPanel;
    btnCadastrarUsuario: TSpeedButton;
    pnlInvisivel4: TPanel;
    btnFechar: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  PageLoginCadastro: TPageLoginCadastro;

implementation

uses
  Router4D;

{$R *.dfm}

{ TPageLoginCadastro }

procedure TPageLoginCadastro.btnFecharClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Login');
end;

function TPageLoginCadastro.Render: TForm;
begin
  Result := Self;
end;

procedure TPageLoginCadastro.UnRender;
begin

end;

end.
