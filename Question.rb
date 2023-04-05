class Question
  # -> A question includes 2 random numbers (1 - 20)
  # -> A question have a good answer

  def initialize()
    @number_1 = rand(1..20)
    @number_2 = rand(1..20)
    @answer = @number_1 + @number_2
  end

  def print_question 
  # -> Display a well formatted question and the answer in an array
  end

  def validate_answer 
  # -> Return if user have a good or bad answer
  end
end