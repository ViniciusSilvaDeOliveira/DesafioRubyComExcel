Dir[File.join(File.dirname(__FILE__), '../pages_objects/*_page.rb')].each { |file| require file } 

module PageObjects
    def cadastro
        @cadastro ||= PageObjectLogin.new
    end

    def dadosCadastro
        @dadosCadastro ||= LeituraExcel.new
    end

    def login
        @login ||= Page_ObjectLogin.new
    end

    def telaInicial
        @telaInicial ||= Tela_Inicial.new
    end
end