class Board

  attr_accessor :all_boardcases, :turns

  # Toutes les cases du board non assignées
  @@all_positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

  def initialize
    @all_boardcases = []
    (0..8).each do |boardcase| # Loop pour assigner les positions des 9 cases du board
      @all_boardcases << BoardCase.new(@@all_positions[boardcase], "a ")
    end

     @all_boardcases = @all_boardcases.each_slice(3).to_a
    #puts @all_boardcases[1].size
    self.main_board
    #@all_boardcases
    @turns = 1
  end

  def main_board_matrice
    for i in 0..2#i : line
      for j in 0..2 #j : column
         @all_boardcases[i][j] = @all_boardcases[i][j]                                   #.case_statement
      end
    end
    return @all_boardcases
  end

  def main_board
    main_board_matrice
      puts ""
      puts "      #{@all_boardcases[0][0].case_statement}    | #{@all_boardcases[0][1].case_statement}    |   #{@all_boardcases[0][2].case_statement}       "
      puts "      -----------------      "
      puts "      #{@all_boardcases[1][0].case_statement}    | #{@all_boardcases[1][1].case_statement}    |   #{@all_boardcases[1][2].case_statement}       "
      puts "      -----------------      "
      puts "      #{@all_boardcases[2][0].case_statement}    | #{@all_boardcases[2][1].case_statement}    |   #{@all_boardcases[2][2].case_statement}       "
      puts ""
  end

  def is_finished?
    #Verifie si une ligne est gagnante
    for i in 0..2
        if @all_boardcases[i][0] == @all_boardcases[i][1] && @all_boardcases[i][0] == @all_boardcases[i][2] && @all_boardcases[i][0] != " "
          return true
        end
    end
    #verifie si une colonne est gagnante
    for j in 0..2
      if @all_boardcases[0][j] == @all_boardcases[1][j] && @all_boardcases[0][j] == @all_boardcases[2][j] && @all_boardcases[0][J] != " "
        return true
      end
    end
    #Verifie les diagonales
    if (@all_boardcases[0][0] == @all_boardcases[1][1] && @all_boardcases[0][0] == @all_boardcases[2][2] && @all_boardcases[2][2] != " " ) == false
      return @all_boardcases[2][0] == @all_boardcases[1][1] && @all_boardcases[2][0] == @all_boardcases[0][2] && @all_boardcases[1][1] != " "
    else
      return @all_boardcases[0][0] == @all_boardcases[1][1] && @all_boardcases[0][0] == @all_boardcases[2][2] && @all_boardcases[2][2] != " "
    end

    if @turns == 9
      return true
    end

  end

    


end



#   def changing_boardcases_statement
#     if 
#   end

# end












  # def is_finished?
  #   (0..8).each do |i|
  #    @all_boardcases[i].case_position.include?("A")                  .length == 3


  #     true
  #   else
  #     false
  #   end
  # end