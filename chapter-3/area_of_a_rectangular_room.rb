# Constraints:
#
# * Keep the calculations separate from the output.
# * Use a constant to hold the conversion factor.

require_relative '../chapter-2/numeric_functions'

length = get_number_from_user_input "What is the length of the room in feet?"
width = get_number_from_user_input "What is the width of the room in feet?"

square_feet = length.to_i * width.to_i

CONVERSION_FACTOR = 0.092903
square_meters = square_feet * CONVERSION_FACTOR

puts %Q(You entered dimensions of #{length} feet by #{width} feet.
The area is
#{square_feet} square feet
#{square_meters} square_meters)
