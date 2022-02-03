Rails.application.routes.draw do
  get '/available-airport-codes', to: 'airport_codes#index'
end
