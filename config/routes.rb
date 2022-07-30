Rails.application.routes.draw do
  devise_for :users
  resources :recipes_foods
  resources :recipes
  resources :users do
    resources :foods
    resources :recipes
  end
  root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/public_recipes', to: "recipes#public"
  # Defines the root path route ("/")
  # root "articles#index"
 
end
