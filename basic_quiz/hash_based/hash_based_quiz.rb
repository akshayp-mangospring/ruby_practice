require_relative '../quiz/quiz'
require_relative './question'

class HashBasedQuiz < Quiz
  def initialize(questions)
    @questions = questions.map { |ques| Question.new(ques) }
    super()
  end

  def print_options
    @current_question.options.each do |option|
      puts "\t#{option.key} - #{option.value}\n"
    end
  end
end
