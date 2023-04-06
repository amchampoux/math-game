class Question
  attr_accessor :number_1, :number_2, :answer
  # -> A question includes 2 random numbers (1 - 20)
  # -> A question have a good answer

  def initialize()
    @number_1 = rand(1..20)
    @number_2 = rand(1..20)
    @answer = number_1 + number_2
  end

  #Display a well formatted question 
  def print_question(current_player)
    "#{current_player.name}: What does #{@number_1} plus #{@number_2} equal?"
  end
  
  #Return if user have a good or bad answer
  def validate_answer(player_answer)
     player_answer == @answer
  end

end


