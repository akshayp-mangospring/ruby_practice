require_relative './array_based_quiz'

questions = [
  [
    'In which year did India gain independence from British?',
    [1947, 1945, 1941],
    0
  ],
  [
    'Who was the first Prime Minister of India?',
    ['Indira Gandhi', 'Jawaharlal Nehru', 'Lal Bahadur Shashtri'],
    1
  ]
]

array_based_quiz = ArrayBasedQuiz.new(questions)
array_based_quiz.run
