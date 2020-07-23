class Application

  attr_accessor :my_game :my_board

  def initialize
    @my_game = Game.new
    @my_board = Board.new
  end

  def is_still_ongoing?
    
    
end