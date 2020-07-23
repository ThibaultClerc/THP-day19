class Game

  attr_accessor :player1, :player2, :board, :turns
  @@turns = 1

  def initialize
    @player1 = Player.new("")
    @player2 = Player.new("")
    @board = Board.new
  end


  def whose_turn_is_it? #Renvoi le joueur correspondant à la parité de son numéro
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

  def end_game #menu de fin de jeu
    if @board.is_finished?
      if @board.var == 1 #Permet de savoir si un joueur a gagné
        @@turns += 1
        puts "
        ___________________________________________________________
      |            Bravo, #{self.whose_turn_is_it?.name} a gagné un ricard !  |
        -----------------------------------------------------------
        "
      end
      puts "
      __________________________________________________________
    | La partie est terminée ! Voulez-vous rejouer ? (oui / non) |
      ----------------------------------------------------------
      "
      answer = gets.chomp
      if answer == "non"
        puts "
          ___________
        || A bientot ||
          -----------
        "
      else
        system('ruby app.rb') #relance une partie
      end
    end
  end


end
