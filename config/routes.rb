Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", { :controller => "currency", :action => "home" })

  get("/currency_pairs", { :controller => "currency", :action => "first_currency" })



end
