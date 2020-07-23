class Game

  attr_accessor :player1, :player2, :which_player_plays, :board, :turns

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

  def whose_turn_is_it?
    if @board.turns.odd?
      @player1
      puts "C'est à #{@player1.name} de jouer !"
    else
      @player2
      puts "C'est à #{@player2.name} de jouer !"
    end
  end

  def player_choose_a_case(player_to_play) #change le statement de la case choisie en X ou O
    puts "Choisi une case"
    chosen_case = gets.chomp
    (0..2).each do |i|
      (0..2).each do |j|
        if @board.all_boardcases[i][j].position == chosen_case
          @board.all_boardcases[i][j].case_x_or_o(player_to_play.symbol)
        end
      end
    end
  end
     
end