Rails.application.routes.draw do
  get 'hotel/index'
  get 'travel/index'
  get 'home/index'
  get 'flight/index'

  devise_for :users
  root to: "home#index"
  
  get '/search' => 'travel#search'
  get '/searchhotel' => 'hotel#searchhotel'
  get '/airline_info' => 'flight#airline_info'
  get '/flight_inspiration' => 'flight#flight_inspiration'
  get '/flight_lowfare' => 'flight#flight_lowfare'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
