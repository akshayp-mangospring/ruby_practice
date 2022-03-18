require_relative './option'

class Question
  attr_reader :question, :options

  def initialize(question)
    @question, options, @correct_answer = question
    @options = options.map { |value| Option.new(value) }
  end

  def prompt_based_correct_answer
    @correct_answer + 1
  end
end
