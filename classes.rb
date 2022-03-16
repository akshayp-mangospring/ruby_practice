# Classes is the way to create a custom datattype, which basically is a combination of other primitive datatypes organised in a particular way to build up a bit more complex object.
# We refer to instance variables as attributes or fields

class Book
  # This line sets up three attributes on the Book class, with it's respective getter & setter methods
  # Note that we didn't even need to have an `initialize` method on it for getting started.
  attr_accessor :title, :author, :pages
end

# Whenever we initialize a blank object with `.new` without an `initialize` method then all attributes are set to `nil` by default
# But if the class has got an `initialize` method in it then it gets called by default.
blank_book = Book.new
puts blank_book # => <Book:0x0000000001728430>
puts blank_book.title.class # => NilClass
puts blank_book.pages.class # => NilClass
