unit MiniErpConfeitaria.View.Pages.Login.AlterarSenha;

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
  TPageAlterarSenha = class(TForm, iRouter4DComponent)

    pnlMain: TPanel;
    StackPanel1: TStackPanel;
    lblEmailEsqueceuSenha: TLabel;
    edtEmailEsqueceuSenha: TEdit;
    lblUsuarioEsqueceuSenha: TLabel;
    edtUsuarioEsqueceuSenha: TEdit;
    pnlInvisivel5: TPanel;
    pnlInvisivel6: TPanel;
    btnEnviarEmail: TPanel;
    btnFechar: TPanel;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  PageAlterarSenha: TPageAlterarSenha;

implementation

uses
  Router4D;

{$R *.dfm}

{ TPageAlterarSenha }

procedure TPageAlterarSenha.btnFecharClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Login');
end;

function TPageAlterarSenha.Render: TForm;
begin
  Result := Self;
end;

procedure TPageAlterarSenha.UnRender;
begin

end;

end.
