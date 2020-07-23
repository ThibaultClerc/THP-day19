class Player
  attr_accessor :name, :symbol

  @@player_count = 0

  def initialize(player)
    @@player_count += 1
    @player = player
    if @@player_count == 1
      @symbol = "X"
    else
      @symbol = "O"
    end
  end

end