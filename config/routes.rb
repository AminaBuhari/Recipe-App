Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "foods#index"
  resources :recipe, only:[:index, :show]
  resources :public, only:[:index]
  resources :shopping, only;[:index]
end
