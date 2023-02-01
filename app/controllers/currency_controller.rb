class CurrencyController < ActionController::Base

def home
    render({ :template => "/layouts/home.html.erb" })
end

def first_currency
  @raw_data = open("https://api.exchangerate.host/symbols").read
  @parsed_data = JSON.parse(@raw_data)
  @symbols_hash = @parsed_data.fetch("symbols")
  @array_of_symbols = @symbols_hash.keys

  render({ :template => "/layouts/currency_pairs.html.erb"})
  
end

end
