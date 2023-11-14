#language: pt

Funcionalidade: Realizar Cadastro

Contexto:
    * estar na pagina inicial

    @CT001
    Cenario: Realizar um cadastro na plataforma
        Dado selecionar a opcao guest
        E clicar em register
        Quando preencho as informacoes de cadastro
        Entao valido que fui regirecionado para a tela de login

    @CT002
    Cenario: Realizar cadastro com usuario ja cadastrado na plataforma
        Dado selecionar a opcao guest
        E clicar em register
        Quando preenchemos as informacoes com um dado já cadastrado
        Entao valido que permaneco na mesma tela de cadastro

    @CT003
    Cenario: Realizar Login
        Dado selecionar a opcao guest
        E clico em Log in
        Quando preencho as informacoes de login
        E realizo o login
        Entao valido que estou na tela inicial

    @CT004
    Cenario: Realizar uma pesquisa de um carro
        Dado selecionar a opcao guest
        E clico em Log in
        Quando preencho as informacoes de login
        E realizo o login
        E clico em Search
        E realizo a busca do carro Audi
        Entao valido que a pesquisa me trouxe alguns carros do modelo pesquisado

    @CT005
    Cenario: Realizar pesquisa pelo Make
        Dado selecionar a opcao guest
        E clico em Log in
        Quando preencho as informacoes de login
        E realizo o login
        E clico em Search
        E clico em Make selecionando a opção BMW
        Entao valido que aparece apenas carros do modelo BMW
