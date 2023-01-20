program MiniErpConfeitaria;

uses
  Vcl.Forms,
  MIniErpConfeitaria.Src.View.Styles.Colors in 'src\view\styles\MIniErpConfeitaria.Src.View.Styles.Colors.pas',
  MiniErpConfeitaria.Src.View.Routers in 'src\view\routers\MiniErpConfeitaria.Src.View.Routers.pas',
  MiniErpConfeitaria.Src.View.Pages.Principal in 'src\view\pages\MiniErpConfeitaria.Src.View.Pages.Principal.pas' {FormPrincipal},
  MiniErpConfeitaria.Src.View.Pages.Form.Template in 'src\view\pages\MiniErpConfeitaria.Src.View.Pages.Form.Template.pas' {FormTemplate},
  MiniErpConfeitaria.Src.View.Pages.Clientes in 'src\view\pages\MiniErpConfeitaria.Src.View.Pages.Clientes.pas' {PageClientes},
  MiniErpConfeitaria.Src.View.Pages.Padrao in 'src\view\pages\MiniErpConfeitaria.Src.View.Pages.Padrao.pas' {PagePadrao},
  MiniErpConfeitaria.Src.View.Pages.Pedidos in 'src\view\pages\MiniErpConfeitaria.Src.View.Pages.Pedidos.pas' {PagePedidos},
  MiniErpConfeitaria.Src.View.Pages.Produtos in 'src\view\pages\MiniErpConfeitaria.Src.View.Pages.Produtos.pas' {PageProdutos};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
