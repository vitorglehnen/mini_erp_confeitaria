program MiniErpConfeitaria;

{$R *.dres}

uses
  Vcl.Forms,
  MIniErpConfeitaria.View.Styles.Colors in 'src\view\styles\MIniErpConfeitaria.View.Styles.Colors.pas',
  MiniErpConfeitaria.View.Routers in 'src\view\routers\MiniErpConfeitaria.View.Routers.pas',
  MiniErpConfeitaria.View.Pages.Principal in 'src\view\pages\MiniErpConfeitaria.View.Pages.Principal.pas' {FormPrincipal},
  MiniErpConfeitaria.View.Pages.Form.Template in 'src\view\pages\MiniErpConfeitaria.View.Pages.Form.Template.pas' {FormTemplate},
  MiniErpConfeitaria.View.Pages.Clientes in 'src\view\pages\MiniErpConfeitaria.View.Pages.Clientes.pas' {PageClientes},
  MiniErpConfeitaria.View.Pages.Padrao in 'src\view\pages\MiniErpConfeitaria.View.Pages.Padrao.pas' {PagePadrao},
  MiniErpConfeitaria.View.Pages.Pedidos in 'src\view\pages\MiniErpConfeitaria.View.Pages.Pedidos.pas' {PagePedidos},
  MiniErpConfeitaria.View.Pages.Produtos in 'src\view\pages\MiniErpConfeitaria.View.Pages.Produtos.pas' {PageProdutos},
  MiniErpConfeitaria.Model.DAO.Interfaces in 'src\model\DAO\MiniErpConfeitaria.Model.DAO.Interfaces.pas',
  MiniErpConfeitaria.Model.DAO.Rest in 'src\model\DAO\MiniErpConfeitaria.Model.DAO.Rest.pas',
  MiniErpConfeitaria.Model.Services.Register in 'src\model\Services\MiniErpConfeitaria.Model.Services.Register.pas',
  MiniErpConfeitaria.View.Pages.Form.Login in 'src\view\pages\MiniErpConfeitaria.View.Pages.Form.Login.pas' {FormLogin},
  MiniErpConfeitaria.View.Pages.Login.Cadastro in 'src\view\pages\MiniErpConfeitaria.View.Pages.Login.Cadastro.pas' {PageLoginCadastro},
  MiniErpConfeitaria.View.Pages.Login in 'src\view\pages\MiniErpConfeitaria.View.Pages.Login.pas' {PageLogin},
  MiniErpConfeitaria.View.Pages.Login.AlterarSenha in 'src\view\pages\MiniErpConfeitaria.View.Pages.Login.AlterarSenha.pas' {PageAlterarSenha};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.
