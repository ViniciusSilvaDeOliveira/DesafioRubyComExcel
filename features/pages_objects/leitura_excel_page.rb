class LeituraExcel
    attr_reader :excel
  
    def initialize(file_path)
      @excel = Roo::Excelx.new(file_path)
      @excel.default_sheet = @excel.sheets.first
    end
  
    def ler_linha(row)
      {
        nome: excel.cell(row, 1),
        sobrenome: excel.cell(row, 2),
        username: excel.cell(row, 3),
        password: excel.cell(row, 4)
      }
    end
  
    def total_linhas
      excel.last_row
    end
  end
  