unit MiniErpConfeitaria.View.Routers;

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
  MiniErpConfeitaria.View.Pages.Clientes,
  MiniErpConfeitaria.View.Pages.Padrao,
  MiniErpConfeitaria.View.Pages.Pedidos,
  MiniErpConfeitaria.View.Pages.Produtos,
  MiniErpConfeitaria.View.Pages.Form.Login,
  MiniErpConfeitaria.View.Pages.Login,
  MiniErpConfeitaria.View.Pages.Login.AlterarSenha,
  MiniErpConfeitaria.View.Pages.Login.Cadastro,
  MiniErpConfeitaria.View.Pages.Principal;


{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D
    .Switch
      .Router('Clientes', TPageClientes)
      .Router('Padrao', TPagePadrao)
      .Router('Pedidos', TPagePedidos)
      .Router('Produtos', TPageProdutos)
      .Router('Login', TPageLogin)
      .Router('LoginSenha', TPageAlterarSenha)
      .Router('LoginCadastro', TPageLoginCadastro)
      .Router('Principal', TFormPrincipal);
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
