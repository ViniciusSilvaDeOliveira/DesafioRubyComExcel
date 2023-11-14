Dado('estar na pagina inicial') do
    visit('/')
    cadastro.load
    #dadosCadastro.load
end

Dado ('selecionar a opcao guest') do
    sleep(2)
    cadastro.btnGuest.click
    sleep(2)
end

E('clicar em register') do
    sleep(2)
    cadastro.btnRegister.click
    sleep(2)
end

Quando('preencho as informacoes de cadastro') do
  sleep(2)
  leitura_excel = LeituraExcel.new('features/excel/register.xlsx')

  1.upto(leitura_excel.total_linhas) do |row| #nessa linha ocorre a iteração dos numeros de linhas do excel e a variavel row contem o numero da linha atual
    dados_linha = leitura_excel.ler_linha(row) #cria um hash para obter os dados da linha atual

    cadastro.inputFirstName.send_keys(dados_linha[:nome]) #obtem as informações do hash dados_linha
    cadastro.inputLastName.send_keys(dados_linha[:sobrenome])
    cadastro.inputUsername.send_keys(dados_linha[:username])
    cadastro.inputPassword.send_keys(dados_linha[:password])
    cadastro.btnCadastro.click
    sleep(2)
    @texto = []
    @texto = login.textoPresenteTela('Please sign in')
    sleep(2)
    cadastro.btnGuest.click
    sleep(2)
    cadastro.btnRegister.click
    sleep(2)
  end
end

Entao('valido que fui regirecionado para a tela de login') do
  expect(@texto).to eql true
end

Quando('preenchemos as informacoes com um dado já cadastrado') do
  sleep(2)
  leitura_excel = LeituraExcel.new('features/excel/register.xlsx')

  dados_linha = leitura_excel.ler_linha(2)
  cadastro.inputFirstName.send_keys(dados_linha[:nome]) #obtem as informações do hash dados_linha
  cadastro.inputLastName.send_keys(dados_linha[:sobrenome])
  cadastro.inputUsername.send_keys(dados_linha[:username])
  cadastro.inputPassword.send_keys(dados_linha[:password])
  cadastro.btnCadastro.click
  sleep(2)
end

Entao('valido que permaneco na mesma tela de cadastro') do 
  expect(cadastro.textoTelaCadastro.text).to eql('Please provide the following')
end

E('clico em Log in') do 
  login.btnLogin.click
end

Quando('preencho as informacoes de login') do 
  sleep(2)
  leitura_excel = LeituraExcel.new('features/excel/register.xlsx')

  dados_linha = leitura_excel.ler_linha(2)
  login.inputUsernameLogin.send_keys(dados_linha[:username])
  login.inputPasswordLogin.send_keys(dados_linha[:password])
  sleep(2)
end

E('realizo o login') do
  login.btnSignIn.click
  sleep(2)
end

Entao('valido que estou na tela inicial') do
  expect(telaInicial.nomeTelaInicial.text).to eql('Leonardo Barros')
end

E('clico em Search') do 
  telaInicial.btnSearch.click
  sleep(2)
end

E('realizo a busca do carro Audi') do 
  telaInicial.campoPesquisa.send_keys('Audi')
  sleep(2)
end

Entao('valido que a pesquisa me trouxe alguns carros do modelo pesquisado') do
  expect(telaInicial.textoPesquisado.text).to include('Audi')
end

E('clico em Make selecionando a opção BMW') do
  telaInicial.btnBmw.click
end

Entao('valido que aparece apenas carros do modelo BMW') do 
  expect(telaInicial.textoBmw.text).to include('BMW')
end