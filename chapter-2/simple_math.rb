# Constraints:
#
# * Values coming from users will be strings. Ensure that you convert these values to numbers before doing the math.
# * Keeptheinputsandoutputsseparatefromthenumerical conversions and other processing.
# * Generate a single output statement with line breaks in the appropriate spots.

def is_number?(number)
  !!Float(number)
rescue ArgumentError
  false
end

def validate(condition, message)
  if !condition
    puts message
    return false
  end

  true
end

def get_number_from_user_input(prompt)
  number = 0

  loop do
    puts prompt
    number = gets.chomp

    next if !validate(is_number?(number), "You should enter a valid number.")
    next if !validate(number.to_f >= 0, "You should enter a positive number.")

    break
  end

  number
end

first = get_number_from_user_input "What's the first number?"
second = get_number_from_user_input "What's the second number?"

puts %Q(#{first} + #{second} = #{first.to_f + second.to_f}
#{first} - #{second} = #{first.to_f - second.to_f}
#{first} * #{second} = #{first.to_f * second.to_f}
#{first} / #{second} = #{first.to_f / second.to_f})
