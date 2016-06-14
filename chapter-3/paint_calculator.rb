require_relative '../chapter-2/numeric_functions'

SQUARE_FIT_PER_GALLON = 350

square_fit = get_number_from_user_input("How many square feet do you want to paint?").to_f
gallons = (square_fit / SQUARE_FIT_PER_GALLON).ceil

puts %Q(You will need to purchase #{gallons} gallons of
paint to cover #{square_fit.to_i} square feet.)

