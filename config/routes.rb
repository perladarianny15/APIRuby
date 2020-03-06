Rails.application.routes.draw do
  get 'travel/index'
  get 'home/index'
  devise_for :users
  root to: "home#index"
  get '/search' => 'travel#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
