class Application

  attr_accessor :my_game, :my_board

  def initialize
    @my_game = Game.new
  end

  def the_game
    @my_game.welcome_screen
    @my_game.players_setup
    @my_game.players_statement
    @my_game.show_board
    @my_game.player_choose_a_case
  end

  def perform
    the_game
  end
end