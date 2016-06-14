require_relative '../chapter-2/numeric_functions'

euros = get_number_from_user_input("How many euros are you exchanging?").to_f
exchange_rate = get_number_from_user_input("What's the exchange rate?").to_f

puts %Q(#{euros} euros at an exchange rate of #{exchange_rate} is
#{(euros * exchange_rate / 100).round(2)} U.S. dollars)
