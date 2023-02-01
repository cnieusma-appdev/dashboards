Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", { :controller => "currency", :action => "home" })

  get("/forex", { :controller => "currency", :action => "first_currency" })
  get("/forex/:base_currency", { :controller => "currency", :action => "convert_to_selection" })
  get("/forex/:base_currency", { :controller => "currency", :action => "convert_to_selection" })


end
