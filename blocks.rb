def method_which_yields
  yield
end

method_which_yields do
  puts 'Hello'
end
