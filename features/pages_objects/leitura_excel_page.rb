class LeituraExcel
    attr_reader :excel
  
    #esse método serve para inicializar a biblioteca Roo::Excelx
    def initialize(file_path) #é chamado quando uma nova instância da classe é criada
      @excel = Roo::Excelx.new(file_path) #cria uma instancia da classe Roo::Excelx que é para manipulação de arquivos excel
      @excel.default_sheet = @excel.sheets.first #seleciona a primeira folha do nosso arquivo Excel
    end
  
    def ler_linha(row) #declaração do método que recebe como paramentro o numero de linha que será lidas
      {
        nome: excel.cell(row, 1), # ler a linha e a coluna do arquivo e pegar o valor
        sobrenome: excel.cell(row, 2),
        username: excel.cell(row, 3),
        password: excel.cell(row, 4)
      }
    end
  
    def total_linhas
      excel.last_row #informar o numero de linhas do arquivo
    end
  end
  