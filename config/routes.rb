Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root
  # get 'restaurants', to: 'restaurants#index'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  resources :restaurants, only: %i[index create new show] do
    resources :reviews, only: %i[new create]
  end
end
