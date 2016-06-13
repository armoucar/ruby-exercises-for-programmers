# Constraints:
#
# * Keep the calculations separate from the output.
# * Use a constant to hold the conversion factor.

puts "What is the length of the room in feet?"
length = gets.chomp

puts "What is the width of the room in feet?"
width = gets.chomp

square_feet = length.to_i * width.to_i

CONVERSION_FACTOR = 0.092903
square_meters = square_feet * CONVERSION_FACTOR

puts %Q(You entered dimensions of #{length} feet by #{width} feet.
The area is
#{square_feet} square feet
#{square_meters} square_meters)
