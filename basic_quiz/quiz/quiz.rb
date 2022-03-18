require_relative '../modules/cli_tools'
require_relative '../modules/math_tools'

class Quiz
  attr_reader :questions, :score

  # Include modules
  include CliTools
  include MathTools

  def initialize
    @index = 0
    @score = 0
    @current_question = @questions[@index]
  end

  def run
    while @index < @questions.length
      print_question
      print_options
      user_ans = CliTools.get_input_with_prompt('Enter your answer')
      check_correct_answer(user_ans)
      set_next_question
    end

    puts "Your Scored: #{MathTools.get_percentage(@score, @questions.length)}%"
  end

  protected

  def print_question
    puts "Q#{@index + 1} - #{@current_question.question}\n"
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
end
