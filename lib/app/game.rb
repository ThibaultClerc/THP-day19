class Game

  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = Player.new("#{player1}")
    @player2 = Player.new("#{player2}")
  end

  def welcome_screen
    puts ""
    puts ""
    puts " ~~~~~~~~~~~ BIENVENUE SUR ILS VEULENT TOUS MA POO ~~~~~~~~~~~"
    puts "|                                                             |"
    puts "|                    Survivez ou trépassez !                  |"
    puts "|                                                             |"
    puts " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts ""
    puts ""
  end