class Board

  attr_accessor :all_boardcases

  # Toutes les cases du board non assignées 
  @@all_positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
  
  def initialize
    @all_boardcases = []
    (0..8).each do |boardcase| # Loop pour assigner les positions des 9 cases du board
      @all_boardcases << BoardCase.new(@@all_positions[boardcase], " ")
    end
    self.main_board
    @all_boardcases
  end

  def main_board
    puts ""
    puts "      #{@all_boardcases[0].case_statement}    | #{@all_boardcases[1].case_statement}    |   #{@all_boardcases[2].case_statement}       "
    puts "      -----------------      "
    puts "      #{@all_boardcases[3].case_statement}    | #{@all_boardcases[4].case_statement}    |   #{@all_boardcases[5].case_statement}       "
    puts "      -----------------      "
    puts "      #{@all_boardcases[6].case_statement}    | #{@all_boardcases[7].case_statement}    |   #{@all_boardcases[8].case_statement}       "
    puts ""
  end
    
  def is_finished?
    (0..8).each do |i|
     @all_boardcases[i].case_position.include?("A")                  .length == 3


      true
    else
      false
    end
  end








end