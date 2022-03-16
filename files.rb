# Reading Files
# It's always considered to be a good practice to check if the file exists before attempting to read it
if File.exists?('./test.txt')
  file = File.open('./test.txt', 'r')
  puts file.read
  file.close
end

# But we can also wrap the file read function in begin/rescue block, it can also help us avoid errors
begin
  file = File.open('./err.txt', 'r')
  puts file.read
  file.close
rescue => e
  puts "#{e.class}: #{e.message}"
end

# Writing Files
# Writing to files also creates files in the process, if they aren't existent
File.open('./test.txt', 'a') do |file|
  # Also not that not only "" strings support interpolation but they also support escape sequences like `\n`
  # So for any kind of special operation, we require double quoted string
  file.write("Oscar, Accounting\n")
end

File.write('./test.txt', "Hello World\n", mode: 'a')

# The Process of converting an object into a string is called 'Serialization'
# Here we are serializing the array to be written to a file
File.write('./test.txt', [1,2,3].join("\n"), mode: 'a')
