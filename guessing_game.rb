# Constants
SECRET_WORD = 'giraffe'
GUESS_LIMIT = 5

guess_count = 0
guessed_word = ''

puts "Welcome to word guessing game with #{GUESS_LIMIT} chances to guess a word. Can you guess the word if we provide you a hint?"
puts ''

while guessed_word != SECRET_WORD && guess_count < GUESS_LIMIT
  puts 'Hint: Animal with the tallest neck.'
  print 'Enter Word: '
  guessed_word = gets.chomp.strip.downcase

  guess_count += 1
  guesses_left = GUESS_LIMIT - guess_count

  if guessed_word == SECRET_WORD
    puts 'Congratulations! You guessed it right.'
  elsif guesses_left.zero?
    puts 'Wrong! Sorry, you lost. 0 guesses left.'
  else
    puts "Wrong! Try again. #{guesses_left} #{guesses_left == 1 ? 'guess' : 'guesses'} left."
  end
  puts ''
end

puts 'Game over. Play again to have fun!'
