require 'net/http'
require 'json'

require_relative '../chapter-2/numeric_functions'

CURRENCIES = [
  { code: "USD", currency_name: "US Dollar" },
  { code: "EUR", currency_name: "Euro" },
  { code: "AUD", currency_name: "Australian Dollar" },
  { code: "CAD", currency_name: "Canadian Dollar" },
  { code: "BRL", currency_name: "Brazilian Real" },
  { code: "CZK", currency_name: "Czech Republic Koruna" },
  { code: "GBP", currency_name: "Pound sterling" },
  { code: "HKD", currency_name: "Hong Kong Dollar" },
  { code: "JPY", currency_name: "Japanese Yen" },
  { code: "NOK", currency_name: "Norwegian Krone" },
]

CURRENCY_CODES = CURRENCIES.map { |c| c[:code] }

def input_currency(msg)
  currency = nil
  loop do
    puts msg
    currency = gets.chomp.upcase
    break if CURRENCIES.select { |c| c[:code].eql?(currency) }.length > 0
  end
  currency
end

def get_rates(from, to)
  url = "http://api.fixer.io/latest?base=#{from}&symbols=#{to}"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

source_currency = input_currency "Select a source currency:\n#{CURRENCY_CODES.join(", ")}"
amount = get_number_from_user_input("How much #{source_currency} do you want to exchange?").to_f
destiny_currency = input_currency "Select a destiny currency:\n#{CURRENCY_CODES.join(", ")}"

exchange_rate = get_rates(source_currency, destiny_currency)
rate = exchange_rate["rates"][destiny_currency]

puts %Q(#{amount} #{source_currency} at an exchange rate of #{rate} is
#{(amount * rate).round(2)} #{destiny_currency})
