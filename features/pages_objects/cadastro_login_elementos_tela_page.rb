class PageObjectLogin < SitePrism::Page
    set_url('/')
    element :btnGuest,       :xpath, '/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/a'
    element :btnLogIn,       :xpath, '/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[1]'
    element :btnRegister,    :xpath, '/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[2]'
    element :inputFirstName, :xpath, '//*[@id="registration-form"]/fieldset/div[1]/input'
    element :inputLastName,  :xpath, '//*[@id="registration-form"]/fieldset/div[2]/input'
    element :inputUsername,  :xpath, '//*[@id="registration-form"]/fieldset/div[3]/input'
    element :inputPassword,  :xpath, '//*[@id="registration-form"]/fieldset/div[4]/input'
    element :btnCadastro,    :xpath, '//*[@id="registration-form"]/fieldset/div[5]/button'

    
end