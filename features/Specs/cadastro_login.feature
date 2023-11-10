#language: pt

Funcionalidade: Realizar Cadastro

Contexto:
    * estar na pagina inicial

    @CT001
    Cenario: Realizar um cadastro na plataforma
        Dado selecionar a opcao guest
        E clicar em register
        Quando preencho as informacoes de cadastro
        E registro
        Entao valido que fui regirecionado para a tela de login