require_relative '../chapter-2/numeric_functions'

items = []
loop do
  item_price = get_number_from_user_input("Enter the price of item #{items.length + 1}:").to_f
  item_quantity = get_number_from_user_input("Enter the quantity of item #{items.length + 1}:").to_f
  items.push({ price: item_price, quantity: item_quantity, total: item_price * item_quantity })

  continue = nil
  loop do
    puts "Add more products? y or n"
    continue = gets.chomp
    break if continue.eql? "y" or continue.eql? "n"
  end

  break if continue.downcase.eql? "n"
end

subtotal = items.map { |item| item[:total] }.inject :+
tax = subtotal * (5.5 / 100)
total = subtotal + tax

puts %Q(Subtotal: $#{subtotal.round(2)}
Tax: $#{tax.round(2)}
Total: $#{total.round(2)}
)
