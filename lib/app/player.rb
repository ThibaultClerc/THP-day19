class Player
  attr_accessor :name, :symbol

  @@player_count = 0

  def initialize(name)
    @@player_count += 1
    @name = name
    if @@player_count == 1
      @symbol = "X"
    else
      @symbol = "O"
    end
  end

end