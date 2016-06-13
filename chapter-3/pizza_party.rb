require_relative '../chapter-2/numeric_functions'

class PizzaParty

  def initialize()
    option = nil
    loop do
      puts ["Type option number you want to proceed:",
            "[1] I want to divide the pizzas I have",
            "[2] I want to calculate the number of pizzas I need to order"].join("\n")

      option = gets.chomp
      if !(option.eql? "1" or option.eql? "2")
        STDERR.puts "Invalid argument: choose 1 or 2."
        next
      end

      break
    end

    @option = option

    input
    output
  end

  def divide_pizzas?
    @option.eql? "1"
  end

  def order_pizzas?
    @option.eql? "1"
  end

  def input
    if divide_pizzas?
      @number_of_people = get_number_from_user_input("How many people?").to_i
      @pizzas = get_number_from_user_input("How many pizzas do you have?").to_i
    else
      @number_of_people = get_number_from_user_input("How many people?").to_i
      @slices = get_number_from_user_input("How many pieces for each?").to_i
    end
  end

  def output
    if divide_pizzas?
      puts ["#{@number_of_people} people with #{@pizzas} pizzas",
      "Each person gets #{@pizzas * 8 / @number_of_people} pieces of pizza.",
      "There are #{@pizzas * 8 % @number_of_people} leftover pieces"].join("\n")
    else
      puts ["#{@number_of_people} people and #{@slices} pieces for each",
      "You must order #{(@slices * @number_of_people / 8.0).ceil} pizzas.",
      "There will be #{((@slices * @number_of_people / 8.0).ceil % 8.0).ceil} leftover pieces"].join("\n")
    end
  end

end

PizzaParty.new
