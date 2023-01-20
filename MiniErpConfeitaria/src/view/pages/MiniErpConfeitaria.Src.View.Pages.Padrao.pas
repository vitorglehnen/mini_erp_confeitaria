unit MiniErpConfeitaria.Src.View.Pages.Padrao;

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
  Router4D.Interfaces,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage;

type
  TPagePadrao = class(TForm, iRouter4DComponent)
    pnlMain: TPanel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyStyle;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  PagePadrao: TPagePadrao;

implementation

uses
  MIniErpConfeitaria.Src.View.Styles.Colors;

{$R *.dfm}

{ TPagePadrao }

procedure TPagePadrao.ApplyStyle;
begin
  //
end;

procedure TPagePadrao.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TPagePadrao.Render: TForm;
begin
  Result := Self;
end;

procedure TPagePadrao.UnRender;
begin
  //
end;

end.
