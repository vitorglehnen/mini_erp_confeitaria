unit MiniErpConfeitaria.View.Pages.Index;

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
  Vcl.ExtCtrls;

type
  TPageIndex = class(TForm)
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageIndex: TPageIndex;

implementation

uses
  Router4D,
  MiniErpConfeitaria.View.Pages.Form.Login;

{$R *.dfm}

procedure TPageIndex.FormCreate(Sender: TObject);
begin
  TRouter4D.Render<TFormLogin>.SetElement(pnlMain, pnlMain);
end;

end.
