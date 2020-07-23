class Game

  attr_accessor :player1, :player2, :which_player_plays

  def initialize
    @players = []
    @player1 = Player.new("")
    @player2 = Player.new("")
    @players = [@player1, @player2]
    @board = nil
    @which_player_plays = "#{@player1.name}"
    @game_status = "Not started yet"
  end

  def welcome_screen
    puts ""
    puts ""
    puts " ~~~~~~~~~~~ BIENVENUE SUR TIC TAC TOE ~~~~~~~~~~~~~~~~~~    |"
    puts "|                                                             |"
    puts " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts ""
    puts ""
  end

  def players_setup
    puts "Nom du player 1 ?"
   @player1.name = gets.chomp
    puts "Nom du player 2 ?"
    @player2.name = gets.chomp
  end

  def players_statement
    puts "#{@player1.name} tu joueras avec les X !"
    puts "#{@player2.name} tu joueras avec les O !"
  end

  def show_board
    @board = Board.new
  end

  def player_choose_a_case
    puts "Choisi une case"
    chosen_case = gets.chomp
    (0..2).each do |i|
      (0..2).each do |j|
        if @all_boardcases[i][j].position == chosen_case
          @all_boardcases[i][j].case_x_or_o(@player1.symbol)
        end
      end
    end
  end
     
end