require_relative '../common/quiz'
require_relative './question'

class ArrayBasedQuiz < Quiz
  def initialize(questions = [])
    @questions = questions.map { |ques| Question.new(ques) }
    super()
  end

  def print_options
    @current_question.options.each_with_index do |option, i|
      puts "\t#{i + 1} - #{option.value}\n"
    end
  end
end
