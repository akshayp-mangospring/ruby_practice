require_relative '../common/constants'
require_relative './hash_based_quiz'

questions = [
  {
    question: 'In which year did India gain independence from British?',
    options: {
      a: 1947,
      b: 1945,
      c: 1941,
    },
    correct_answer: Constants::A,
  },
  {
    question: 'Who was the first Prime Minister of India?',
    options: {
      a: 'Indira Gandhi',
      b: 'Jawaharlal Nehru',
      c: 'Lal Bahadur Shashtri',
    },
    correct_answer: Constants::B,
  }
]

hash_based_quiz = HashBasedQuiz.new(questions)
hash_based_quiz.run
