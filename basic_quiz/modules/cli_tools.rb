module CliTools
  def CliTools.get_input_with_prompt(msg)
    puts msg
    gets.chomp.strip
  end
end
