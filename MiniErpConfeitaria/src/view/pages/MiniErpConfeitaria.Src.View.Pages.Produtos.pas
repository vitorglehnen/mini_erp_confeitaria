unit MiniErpConfeitaria.Src.View.Pages.Produtos;

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
  Data.DB,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types;

type
  [FormRest('/users', 'guuid', 'name', 'asc')]
  [FormDefault('Produtos')]

  TPageProdutos = class(TFormTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageProdutos: TPageProdutos;

implementation

{$R *.dfm}

end.
