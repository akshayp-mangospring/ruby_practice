puts 'Akshay, age: ' + 27.to_s

# This doesn't work, since there's no implicit conversion of Int to String
# 'Akshay' + 27
# Since Ruby has more of a strict convention, like Java/C/C++, although it doesn't seem like. But it has.
# Interpolation solves this problem by implicitly calling the `.to_s` method on every evaluated expression.

puts 'Enter your first name'
# Chomp is just used to scrap off the newline from the user input
first_name = gets.chomp
puts 'Enter your last name'
last_name = gets.chomp
full_name = "#{first_name} #{last_name}"

puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
# /\s+/ - Stands for more than one space or whitespace characters(\t, \n, etc.)
puts "Your name has #{full_name.gsub(/\s+/, '').length} characters in it"

# Needed to escape backslash here, since actually backslash is used for continuation of strings
puts '|\\'
puts '| \\'
puts '|  \\'
puts '|   \\'
puts '|____\\'

# For Example
puts 'Hello' \
'World'
# It gives o/p of HelloWorld
