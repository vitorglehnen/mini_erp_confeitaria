unit MiniErpConfeitaria.View.Pages.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.ImgList,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,

  Router4d.Interfaces,
  Router4D,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  MIniErpConfeitaria.View.Styles.Colors,
  MiniErpConfeitaria.View.Pages.Padrao;


type
  TFormPrincipal = class(TForm, iRouter4DComponent)
    [ComponentBindStyle(COLOR_BACKGROUND)]
    pnlMain: TPanel;

    [ComponentBindStyle(COLOR_TOP)]
    pnlTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND)]
    pnlCenter: TPanel;

    [ImageAttribute('ico_pedido')]
    btnPedidos: TSpeedButton;

    [ImageAttribute('ico_produto')]
    btnProdutos: TSpeedButton;

    [ImageAttribute('ico_relatorio')]
    btnRelatorios: TSpeedButton;

    [ImageAttribute('ico_config')]
    btnConfiguracoes: TSpeedButton;

    [ImageAttribute('ico_cliente')]
    btnClientes: TSpeedButton;

    [ImageAttribute('ico_page_inicial')]
    btnInicial: TSpeedButton;

    imgLogoTipo: TImage;

    procedure btnClientesClick(Sender: TObject);
    procedure btnInicialClick(Sender: TObject);
    procedure btnPedidosClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UnRender;
    function Render : TForm;
  published
    { Published declarations }
    procedure FormCreate(Sender: TObject);
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.btnClientesClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Clientes');
end;

procedure TFormPrincipal.btnInicialClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Padrao');
end;

procedure TFormPrincipal.btnPedidosClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Pedidos');
end;

procedure TFormPrincipal.btnProdutosClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Produtos');
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  TRouter4D.Render<TPagePadrao>.SetElement(pnlCenter, pnlMain);
  TBind4D
    .New
      .Form(Self)
      .SetImageComponents
      .SetStyleComponents;
end;

function TFormPrincipal.Render: TForm;
begin
  Result := Self;
end;

procedure TFormPrincipal.UnRender;
begin

end;

end.
