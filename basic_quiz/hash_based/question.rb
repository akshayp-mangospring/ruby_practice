require_relative './option'

class Question
  attr_reader :question, :options

  def initialize(question)
    @question = question[:question]
    @options = question[:options].map { |k, v| Option.new(k, v) }
    @correct_answer = question[:correct_answer]
  end

  def prompt_based_correct_answer
    @correct_answer.to_sym
  end
end
