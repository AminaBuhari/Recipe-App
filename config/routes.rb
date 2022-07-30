Rails.application.routes.draw do
  resources :ingredients
  devise_for :users
  resources :recipes_foods
  resources :users do
    resources :foods
    resources :recipes do
        resources :ingredients, controller: 'ingredients', except: [ :index, :show ]
      end
  end
  root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
end
