unit MiniErpConfeitaria.View.Pages.Pedidos;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  Data.DB,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  MiniErpConfeitaria.View.Pages.Form.Template, Vcl.WinXPanels;

type
  [FormRest('/users', 'guuid', 'name', 'asc')]
  [FormDefault('Pedidos')]

  TPagePedidos = class(TFormTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PagePedidos: TPagePedidos;

implementation

{$R *.dfm}

end.
