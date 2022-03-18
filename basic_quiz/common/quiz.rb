class Quiz
  attr_reader :questions, :score

  def initialize
    @index = 0
    @score = 0
    @current_question = @questions[@index]
  end

  def run
    while @index < @questions.length
      print_question
      print_options
      user_ans = get_answer
      check_correct_answer(user_ans)
      set_next_question
    end

    puts "Your Scored: #{get_percentage}%"
  end

  protected

  def print_question
    puts "Q#{@index + 1} - #{@current_question.question}\n"
  end

  def get_answer
    puts 'Enter your answer'
    gets.chomp.strip
  end

  def check_correct_answer(ans)
    if ans == @current_question.prompt_based_correct_answer.to_s
      @score += 1
    end
  end

  def set_next_question
    @index += 1
    @current_question = @questions[@index]
  end

  def get_percentage
    (@score / @questions.length.to_f) * 100
  end
end
