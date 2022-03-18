# Module is basically a container where we can store groups of methods
# These modules can then be imported into classes for usage
# So, it's namespace based methods, but they are just functions not having the context of any object
# But there's a problem of ambiguity for calling methods if we don't use the proper namespaces
# So to make sure that we properly namespace them we just prepend the module name to the method name
# Whenever we get to know that something doesn't peoprly fit inside a class but might fit somewhere else, we try to place it inside a module, concern, decorator, etc.
# But I'm still not totally sure what code should be placed where. I'm still exploring.

module Greeting
  def Greeting.say_hi(name)
    puts "Hi, #{name}!"
  end

  def Greeting.say_bye(name)
    puts "Bye, #{name}!"
  end
end
