# Constraints:
#
# * Values coming from users will be strings. Ensure that you convert these values to numbers before doing the math.
# * Keep the inputs and outputs separate from the numerical conversions and other processing.
# * Generate a single output statement with line breaks in the appropriate spots.

require_relative 'numeric_functions'
	
first = get_number_from_user_input "What's the first number?"
second = get_number_from_user_input "What's the second number?"

puts %Q(#{first} + #{second} = #{first.to_f + second.to_f}
#{first} - #{second} = #{first.to_f - second.to_f}
#{first} * #{second} = #{first.to_f * second.to_f}
#{first} / #{second} = #{first.to_f / second.to_f})
