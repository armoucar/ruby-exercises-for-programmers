input_text = nil

loop do
  puts "What's the input string?"
  input_text = gets.chomp

  break if input_text.length > 0
end

puts "'#{input_text}' has #{input_text.length} characters."
