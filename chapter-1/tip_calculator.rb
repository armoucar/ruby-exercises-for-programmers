def is_number?(number)
  !!Integer(number)
rescue ArgumentError
  false
end

def validate(condition, message)
  if !condition
    STDERR.puts message
    return false
  end

  true
end

def amount_bigger_than_zero(number)
  number
end

bill_amount = 0
tip_rate = 0

loop do
  puts "What is the bill amount?"
  bill_amount = gets.chomp

  next if !validate(is_number?(bill_amount), "Error: bill amount must be a number")
  next if !validate(bill_amount.to_f >= 0, "Error: bill amount must be bigger than 0")

  break
end

loop do
  puts "What is the tip rate?"
  tip_rate = gets.chomp

  next if !validate(is_number?(tip_rate), "Error: tip rate must be a number")
  next if !validate(tip_rate.to_f >= 0, "Error: tip rate must be bigger than 0")

  break
end

tip = bill_amount.to_f * (tip_rate.to_f / 100)
tip = tip.round 2
bill_total = bill_amount.to_f + tip

puts "Tip: #{tip}"
puts "Total: #{bill_total}"
