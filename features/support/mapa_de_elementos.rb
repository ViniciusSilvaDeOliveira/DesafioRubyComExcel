Dir[File.join(File.dirname(__FILE__), '../pages_objects/*_page.rb')].each { |file| require file } 

module PageObjects
    def login
        @login ||= PageObjectLogin.new
    end

    def dadosCadastro
        @dadosCadastro ||= LeituraExcel.new
    end
end