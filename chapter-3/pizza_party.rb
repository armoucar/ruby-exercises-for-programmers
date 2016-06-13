require_relative '../chapter-2/numeric_functions'

number_of_people = get_number_from_user_input("How many people?").to_i
pizzas = get_number_from_user_input("How many pizzas do you have?").to_i

puts %Q(#{number_of_people} people with #{pizzas} pizzas
Each person gets #{pizzas * 8 / number_of_people} pieces of pizza.
There are #{pizzas * 8 % number_of_people} leftover pieces)
