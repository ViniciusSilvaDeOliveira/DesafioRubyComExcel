class Page_ObjectLogin < SitePrism::Page
    set_url('/')
    element :textoTelaLogin,     :xpath, '/html/body/div[1]/div[2]/div/div/div/div/div[1]/h3'
    element :inputUsernameLogin, :xpath, '//*[@id="login-form"]/fieldset/div[1]/input'
    element :inputPasswordLogin, :xpath, '//*[@id="login-form"]/fieldset/div[2]/input'
    element :btnSignIn,          :xpath, '//*[@id="login-form"]/fieldset/div[3]/button'
end