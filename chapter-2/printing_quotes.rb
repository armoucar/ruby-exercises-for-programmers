# constraints:
#
# * Use a single output statement to produce this output, using appropriate string-escaping techniques for quotes.
#
# * If your language supports string interpolation or string substitution, don’t use it for this exercise. Use string concatenation instead.

puts "What's the quote?"
quote = gets.chomp

puts "Who said it?"
author = gets.chomp

puts author << " says, \"" << quote << "\""
