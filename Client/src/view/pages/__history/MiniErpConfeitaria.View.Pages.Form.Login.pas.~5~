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
  MiniErpConfeitaria.Model.DAO.Rest,
  MIniErpConfeitaria.View.Styles.Colors,
  RESTRequest4D,
  MiniErpConfeitaria.Model.DAO.Interfaces,
  Router4D.Interfaces,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TFormLogin = class(TForm)
    pnlMain: TPanel;

    [ComponentBindStyle(COLOR_TOP, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlEsquerdoLogin: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    pnlDireitoLogin: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_SIZE_LABEL, FONT_COLOR, FONT_NAME)]
    imgLogo: TImage;

    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    pnlCenter: TPanel;

    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses
  Router4D,
  MiniErpConfeitaria.View.Pages.Login;


{$R *.dfm}

procedure TFormLogin.FormCreate(Sender: TObject);
begin
  TRouter4D.Render<TPageLogin>.SetElement(pnlCenter, pnlMain);
  TBind4D
    .New
      .Form(Self)
      .SetImageComponents
      .SetStyleComponents;
end;

end.
