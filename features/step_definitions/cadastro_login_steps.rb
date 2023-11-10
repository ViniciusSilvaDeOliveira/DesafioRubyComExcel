Dado('estar na pagina inicial') do
    visit('/')
    login.load
    #dadosCadastro.load
end

Dado ('selecionar a opcao guest') do
    sleep(2)
    login.btnGuest.click
    sleep(2)
end

E('clicar em register') do
    sleep(2)
    login.btnRegister.click
    sleep(2)
end

Quando('preencho as informacoes de cadastro') do
  sleep(2)
  leitura_excel = LeituraExcel.new('features/excel/register.xlsx')

  1.upto(leitura_excel.total_linhas) do |row|
    dados_linha = leitura_excel.ler_linha(row)

    login.inputFirstName.send_keys(dados_linha[:nome])
    login.inputLastName.send_keys(dados_linha[:sobrenome])
    login.inputUsername.send_keys(dados_linha[:username])
    login.inputPassword.send_keys(dados_linha[:password])

    sleep(2)
  end
end