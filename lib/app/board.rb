class Board

  attr_accessor :all_boardcases, :turns

  # Toutes les cases du board non assignées
  @@all_positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

  def initialize
    @turns = 1
    @all_boardcases = []
    (0..8).each do |boardcase| # Loop pour assigner les positions des 9 cases du board
      @all_boardcases << BoardCase.new(@@all_positions[boardcase], " ")
    end
  #   @all_boardcases = @all_boardcases.each_slice(3).to_a
    self.main_board
  end

  def main_board

    puts ""
    puts "      #{@all_boardcases[0].position}    | #{@all_boardcases[1].position}    |   #{@all_boardcases[2].position}       "
    puts "      -----------------      "
    puts "      #{@all_boardcases[3].position}    | #{@all_boardcases[4].position}    |   #{@all_boardcases[5].position}       "
    puts "      -----------------      "
    puts "      #{@all_boardcases[6].position}    | #{@all_boardcases[7].position}    |   #{@all_boardcases[8].position}       "
    puts ""

      puts ""
      puts "      #{@all_boardcases[0].case_statement}    | #{@all_boardcases[1].case_statement}    |   #{@all_boardcases[2].case_statement}       "
      puts "      -----------------      "
      puts "      #{@all_boardcases[3].case_statement}    | #{@all_boardcases[4].case_statement}    |   #{@all_boardcases[5].case_statement}       "
      puts "      -----------------      "
      puts "      #{@all_boardcases[6].case_statement}    | #{@all_boardcases[7].case_statement}    |   #{@all_boardcases[8].case_statement}       "
      puts ""
  end

  #remplace l'intérieur des cases
  def case_x_or_o(position, symbol)
      for i in 0..8
          if @all_boardcases[i].position == position && @all_boardcases[i].case_statement == " "
            @all_boardcases[i].case_statement = symbol
        end
      end
      return @all_boardcases
  end

  def is_finished?
        #verifie nombre de tour
        if @turns == 9
          return true
        end

    #Verifie si une ligne est gagnante

        if @all_boardcases[0].case_statement == @all_boardcases[1].case_statement && @all_boardcases[0].case_statement == @all_boardcases[2].case_statement && @all_boardcases[0].case_statement != " "
          return true
        end


        if @all_boardcases[3].case_statement == @all_boardcases[4].case_statement && @all_boardcases[3].case_statement == @all_boardcases[5].case_statement && @all_boardcases[3].case_statement != " "
          return true
        end

        if @all_boardcases[6].case_statement == @all_boardcases[7].case_statement && @all_boardcases[6].case_statement == @all_boardcases[8].case_statement && @all_boardcases[6].case_statement != " "
          return true
        end

    #verifie si une colonne est gagnante
    if @all_boardcases[0].case_statement == @all_boardcases[3].case_statement && @all_boardcases[0].case_statement == @all_boardcases[5].case_statement && @all_boardcases[0].case_statement != " "
      return true
    end

    if @all_boardcases[1].case_statement == @all_boardcases[4].case_statement && @all_boardcases[1].case_statement == @all_boardcases[7].case_statement && @all_boardcases[1].case_statement != " "
      return true
    end

    if @all_boardcases[2].case_statement == @all_boardcases[5].case_statement && @all_boardcases[2].case_statement == @all_boardcases[8].case_statement && @all_boardcases[2].case_statement != " "
      return true
    end

    #Verifie les diagonales
    if @all_boardcases[0].case_statement == @all_boardcases[4].case_statement && @all_boardcases[8].case_statement == @all_boardcases[0].case_statement && @all_boardcases[0].case_statement != " "
      return true
    end

    if @all_boardcases[6].case_statement == @all_boardcases[4].case_statement && @all_boardcases[6].case_statement == @all_boardcases[2].case_statement && @all_boardcases[6].case_statement != " "
      return true
    else
      return false
    end


  end



end







#def main_board_matrice
#  for i in 0..2#i : line
#    for j in 0..2 #j : column
#       @all_boardcases[i][j] = @all_boardcases[i][j]                                   #.case_statement
#    end
#  end
#  return @all_boardcases
#end
