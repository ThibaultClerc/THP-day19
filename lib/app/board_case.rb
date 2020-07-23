class BoardCase

  attr_accessor :case_statement, :position


  def initialize(position, case_statement)
    @position = position
    @case_statement = " "
  end

  def case_x_or_o(case_statement)
    if case_statement == "X"
      @case_statement = "X"
    elsif case_statement == "O"
      @case_statement = "O"
    end
  end

end