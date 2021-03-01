class Question
  attr_accessor :question, :answer

  def generate_question
    number1 = rand(1..20)
    number2 = rand(1..20)
    operator = ["plus", "minus"].sample
    @question = "What does #{number1} #{operator} #{number2} equal?"
    if operator == "plus"
      @answer = number1 + number2
    else
      @answer = number1 - number2
    end
  end

end