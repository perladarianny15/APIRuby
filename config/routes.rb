Rails.application.routes.draw do
  get 'hotel/index'
  get 'travel/index'
  get 'home/index'
  get 'flight/index'

  devise_for :users
  root to: "home#index"
  
  get '/search' => 'travel#search'
  get '/searchhotel' => 'hotel#searchhotel'
  get '/search_airline_info' => 'flight#search_airline_info'
  get '/airlineinfo' => 'flight#airlineinfo'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
