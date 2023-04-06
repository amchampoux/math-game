class Match
  attr_accessor :player_1, :player_2
  # -> A match have 2 players
  # -> It triggers a new question at each turn and assign it to the current Player
  # -> Match end when a Player is Game over (no more live)
  # -> It display a Good bye message when game is over

  def initialize()
    @player_1 = Player.new('Anne-Marie')
    @player_2 = Player.new('Simon')
    @current_player = player_1
    @other_player = player_2
  end

  def play 
    #start the match
    puts "====================="
    puts "Let's the game begin!" 
    puts "====================="
    sleep(1)
    new_game = Match.new()

    until @current_player.lives == 0 do
      run_round
    end

    end_game

  end

  #switch active player
  def change_player
    if @current_player == @player_1
      @current_player = @player_2
      @other_player = @player_1
    else
      @current_player = @player_1
      @other_player = @player_2
    end
  end

  #end the game and display message
  def end_game
    puts "====================="
    puts "      GAME OVER      " 
    puts "====================="
  end

  # Full loop into a round
  def run_round

    change_player
    question = Question.new
    puts question.print_question(@current_player)

    player_answer = gets.chomp.to_i

    if question.validate_answer(player_answer)
      puts "YES! You are correct"
      sleep(1)
      puts "#{@current_player.name}: #{@current_player.lives}/3 vs #{@other_player.name}: #{@other_player.lives}/3"
    else 
      puts "Seriously? No!"
      @current_player.lives -= 1
      puts "#{@current_player.name}: #{@current_player.lives}/3 vs #{@other_player.name}: #{@other_player.lives}/3"
    end

    sleep(1)
    puts "====================="
    puts "    Another turn!    " 
    puts "====================="
    sleep(1)
    
  end

end