unit MiniErpConfeitaria.Src.View.Routers;

interface

type
  TRouters = class
    private
    { Private declarations}
    public
    { Public declarations}
      constructor Create;
      destructor Destroy; override;
  end;

var
  Router : TRouters;

implementation

uses
  Router4D,
  MiniErpConfeitaria.Src.View.Pages.Clientes,
  MiniErpConfeitaria.Src.View.Pages.Padrao,
  MiniErpConfeitaria.Src.View.Pages.Pedidos,
  MiniErpConfeitaria.Src.View.Pages.Produtos;


{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D
    .Switch
      .Router('Clientes', TPageClientes)
        .Router('Padrao', TPagePadrao)
          .Router('Pedidos', TPagePedidos)
            .Router('Produtos', TPageProdutos);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization
  Router := TRouters.Create;

finalization
  Router.Free;

end.
