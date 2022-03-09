def greet_with_name(greeting, name)
  puts "#{greeting}, #{name}!"
end

# We can skip the parentheses when we call functions.
# But it's considered as bad practice.
# I'll use it however as I'm exploring
greet_with_name 'Hi', 'Poppins'
greet_with_name 'Hi', 'Jumbo'

# Ruby also has provision for optional arguments, just like JS.
# But it's a convention that we add optional arguments at the last.
def say_hi(name = 'No name', age = 0)
  puts "Hello, #{name}, you are #{age}"
end

say_hi('Akshay', 27)
say_hi

def cube(num)
  num**3
end

puts cube(4)

# JavaScript doesn’t support functions that return multiple values. However, you can wrap multiple values into an array or an object and return the array or the object then use destructuring assignment syntax to unpack values from the array, or properties from objects.
# But unlike JS we can return multiple values from a Ruby function, we can access them in the order in which they were returned

# But it's not considered a good convention to return comma separated values in Ruby, we generally would like to wrap stuff in an array or a hash in Ruby
def get_byes_in_german
  return 'Tschüss', 'Auf Wiedersehen', 'Bis Später'
end

puts get_byes_in_german

# Good convention
def get_greetings_in_german
  ['Grüß dich', 'Hallo', 'Sehr erfreut']
end

puts get_greetings_in_german[1]

# Good convention
def get_sairat_biryanis
  {
    hyderabadi: 110,
    tandoori: 130,
    mutton: 170
  }
end

puts get_sairat_biryanis
