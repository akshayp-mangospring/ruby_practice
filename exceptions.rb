# In Ruby we actially handle exceptions with the rescue keyword
# This is very similar to the try/catch block we have in JS/Java
# Any block of code which we think might throw us an error we wrap it in begin/rescue block

begin
  num = 10 / 0
rescue => e
  puts e
  puts 'Division by Zero error'
end

puts num.class # => NilClass

lucky_nums = [1, 2, 3, 4, 5]

# It's kind of considered a good practice to handle specific types of errors
begin
  lucky_nums.blank? # => throws NoMethodError
  # lucky_nums['dog'] # => throws TypeError
# Here we specify the Type of error thrown to be handled
rescue ZeroDivisionError
  puts 'Division by Zero error'
rescue TypeError
  puts 'Not a valid type'
# Handles all other types of errors
# e.class => Error type, e.message => Error message
rescue => e
  puts "#{e.class}: #{e.message}"
end

puts "See, the program is still running after throwing errors it's saved due to exception handling which it would have broken otherwise"
puts "It's revolutionary!"
