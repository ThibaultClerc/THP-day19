class Application

  attr_accessor :my_game

  def initialize
    @my_game = Game.new
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
   @my_game.player1.name = gets.chomp
    puts "Nom du player 2 ?"
    @my_game.player2.name = gets.chomp
  end

  def players_statement
    puts "#{@my_game.player1.name} tu joueras avec les X !"
    puts "#{@my_game.player2.name} tu joueras avec les O !"
  end


  def the_game
    #while !@my_game.board.is_finished?
    #a=0
    while @my_game.board.is_finished? == false
      @my_game.player_choose_a_case(@my_game.whose_turn_is_it?)
      @my_game.board.main_board
      puts @my_game.board.is_finished?
    puts  @my_game.board.turns += 1
      #a += 1
    end

  end

  def perform
    puts @my_game.board.class
    welcome_screen
    players_setup
    players_statement
    the_game
  @my_game.end_game
  end
end
