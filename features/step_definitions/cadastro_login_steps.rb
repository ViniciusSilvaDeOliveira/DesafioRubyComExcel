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

  1.upto(leitura_excel.total_linhas) do |row|
    dados_linha = leitura_excel.ler_linha(row)

    cadastro.inputFirstName.send_keys(dados_linha[:nome])
    cadastro.inputLastName.send_keys(dados_linha[:sobrenome])
    cadastro.inputUsername.send_keys(dados_linha[:username])
    cadastro.inputPassword.send_keys(dados_linha[:password])

    sleep(2)
  end
end

E('registro') do
  cadastro.btnCadastro.click
end

Entao('valido que fui regirecionado para a tela de login') do 
  sleep(5)
  expect(login.textoTelaLogin.text).to eql('Please sign in')
end