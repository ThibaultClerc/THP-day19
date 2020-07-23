class Game

  attr_accessor :player1, :player2, :board, :turns
  @@turns = 1
  def initialize
    @players = []
    @player1 = Player.new("")
    @player2 = Player.new("")
    @players = [@player1, @player2]
    @board = Board.new
    @whose_turn_is_it = "#{@player1.name}"
  end


  def whose_turn_is_it?
    if @@turns.odd?
      puts "C'est à #{@player1.name} de jouer !"
      @@turns += 1
      @player1
    else
      puts "C'est à #{@player2.name} de jouer !"
      @@turns += 1
      @player2
    end
  end

  def player_choose_a_case(player_to_play)
    puts "Choisi une case"
    chosen_case = gets.chomp
    @board.case_x_or_o(chosen_case, player_to_play.symbol)
  end

  def end_game
    if @board.is_finished?
      puts "La partie est terminée ! Voulez vous rejouer ?"
      answer = gets.chomp
      if answer == "non"
        puts "

        || A bientot ||

        "
      else
        system('ruby app.rb')
      end
    end
  end


end
