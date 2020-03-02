class Question

  def initialize
    @number1 = rand(20)+1
    @number2 = rand(20)+1
    @solution = @number1 + @number2
  end

  def print_question
    puts "What is #{@number1} plus #{@number2}?"
  end

  def check_answer(answer)
    if answer == @solution
      true
    else
      false
    end
  end

end