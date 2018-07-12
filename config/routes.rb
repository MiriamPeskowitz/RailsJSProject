Rails.application.routes.draw do

  get 'food_pantry/_form'
  get 'food_pantry/edit'
  get 'food_pantry/index'
  get 'food_pantry/new'
  get 'food_pantry/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'
  # root to: 'static#home'


  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: "signin"
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: "logout"


  resources :users
  resources :soupkitchens do
  	resources :comments
  end 
end
