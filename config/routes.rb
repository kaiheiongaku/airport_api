Rails.application.routes.draw do
  get '/available-airport-codes', to: 'airport_codes#index'
  get '/available-years', to: 'years#index'
  get '/annual-statistics/:year', to: 'years#show'
  get '/available-quantities', to: 'quantites#index'

  match '*unmatched_route', :to => 'application#raise_not_found!', :via => :all
end
