class Match
  # -> A match have 2 players
  # -> It triggers a new question at each turn and assign it to the current Player
  # -> Match end when a Player is Game over (no more live)
  # -> It display a Good bye message when game is over

  def initialize(player_1, player_2, question, score)
    @player_1 = player_1
    @player_2 = player_2
    @question = question
    @score = score
  end

  def play 
  # Full loop to start the match. 
  # If a player is gameover, displayer Goodbye. If no, start another loop. 
  end

  def get_player_answer 
  # -> Return the input of the user (chomp)
  end
end