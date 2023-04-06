class Player
  attr_accessor :name, :lives
  # -> The Player start with 3 lives
  # -> The Player can provide an answer (terminal input) to a question.
  # -> Each time the Player gets a wrong answers, he looses a live. 

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives - 1
  end

end