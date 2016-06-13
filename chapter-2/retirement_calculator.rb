require 'date'

puts 'What is your current age?'
age = gets.chomp

puts "At what age would you like to retire?"
retire_age = gets.chomp

years_left = retire_age.to_i - age.to_i

puts "You have #{years_left} years left until you can retire"
puts "It's #{DateTime.now.year}, so you can retire in #{DateTime.now.year + years_left}"
