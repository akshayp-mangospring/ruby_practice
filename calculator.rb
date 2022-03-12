should_continue = 'y'

def calculator
  puts 'Enter a number: '
  num1 = gets.chomp.to_f
  puts 'Enter another number: '
  num2 = gets.chomp.to_f

  # Multi Line print statement. With support for newlines, tabs
  puts <<~EOS
  Available operations:
    1 - Add
    2 - Subtract
    3 - Multiply
    4 - Divide
  EOS

  print 'Enter operation: '

  operation = gets.chomp.to_i

  case operation
  when 1
    puts num1 + num2
  when 2
    puts num1 - num2
  when 3
    puts num1 * num2
  when 4
    puts num1 / num2
  else
    puts 'Invalid operator'
  end
end

while should_continue.downcase == 'y'
  calculator
  puts 'Do you wish to continue?(y/n)'
  should_continue = gets.chomp
end
