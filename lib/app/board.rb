class Board

  attr_accessor :my_boardcases

  def initialize
    @my_boardcases = []
    (1..9).each do |boardcase|
      @my_boardcases << BoardCase.new
    end
    @my_boardcases
  end
end