class Application

  attr_accessor :my_game

  def initialize
    @my_game = Game.new
  end

  def game_start
    @my_game.welcome_screen
    @my_game.players_setup
    @my_game.players_statement
  end

  def the_game
    while !@my_game.show_board.is_finished?
      @my_game.player_choose_a_case(@my_game.whose_turn_is_it?)
      @my_game.show_board
      
      @my_game.board.turns += 1
      #------
    end
  end

  def perform
    game_start
    the_game
  end
end