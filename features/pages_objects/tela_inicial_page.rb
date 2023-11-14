class Tela_Inicial < SitePrism::Page
    set_url('/')
    element :nomeTelaInicial, :xpath, '/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/a/span[1]'
    element :btnSearch,       :xpath, '/html/body/div[1]/div[1]/div/div/div[2]/ul/li[2]/a'
    element :campoPesquisa,   :xpath, '/html/body/div[1]/div[2]/div/div/div/div/div[2]/div[2]/a[2]/label/input'
    element :textoPesquisado, :xpath, '/html/body/div[1]/div[2]/div/div/div/div/div[3]/div[1]/div/div[1]/div/nobr'
    element :btnBmw,          :xpath, '/html/body/div[1]/div[2]/div/div/div/div/div[2]/div[3]/a[4]'
    element :textoBmw,        :xpath, '/html/body/div[1]/div[2]/div/div/div/div/div[3]/div[1]/div/div[1]/div/nobr'
end