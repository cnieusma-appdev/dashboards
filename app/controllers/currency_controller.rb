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

def convert_to_selection
  @b_currency = params.fetch("base_currency")
  @raw_data = open("https://api.exchangerate.host/symbols").read
  @parsed_data = JSON.parse(@raw_data)
  @symbols_hash = @parsed_data.fetch("symbols")
  @array_of_symbols = @symbols_hash.keys
  
  render({ :template => "layouts/convert_to_selection.html.erb"})

end

def final_conversion
  @b_currency = params.fetch("base_currency")
  @t_currency = params.fetch("translated_currency")
  
  url = "https://api.exchangerate.host/convert?from=" + @b_currency + "&to=" + @t_currency

  @raw_data = open(url).read
  @parsed_data = JSON.parse(@raw_data)
  @result = @parsed_data.fetch("result")


  render({ :template => "layouts/final_conversion.html.erb"})

end

end
