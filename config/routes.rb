Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :recipes_foods
  resources :recipes
  resources :users do
    resources :foods
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
end
