class Page_ObjectLogin < SitePrism::Page
    set_url('/')
    element :textoTelaLogin,     :xpath, '//h3[text()="Please sign in"]'
    element :inputUsernameLogin, :xpath, '//*[@id="login-form"]/fieldset/div[1]/input'
    element :inputPasswordLogin, :xpath, '//*[@id="login-form"]/fieldset/div[2]/input'
    element :btnSignIn,          :xpath, '//*[@id="login-form"]/fieldset/div[3]/button'
    element :btnLogin,           :xpath, '/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[1]/a'

    def textoPresenteTela(informacao)
        page.has_content?(informacao)
    end
end