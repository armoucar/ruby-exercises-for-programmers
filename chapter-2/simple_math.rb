# Constraints:
#
# * Values coming from users will be strings. Ensure that you convert these values to numbers before doing the math.
# * Keeptheinputsandoutputsseparatefromthenumerical conversions and other processing.
# * Generate a single output statement with line breaks in the appropriate spots.

puts "What's the first number?"
first = gets.chomp

puts "What's the second number?"
second = gets.chomp

puts %Q(#{first} + #{second} = #{first.to_f + second.to_f}
#{first} - #{second} = #{first.to_f - second.to_f}
#{first} * #{second} = #{first.to_f * second.to_f}
#{first} / #{second} = #{first.to_f / second.to_f})
