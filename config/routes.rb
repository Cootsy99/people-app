Rails.application.routes.draw do
  resources :citizenships
  resources :people
  resources :countries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "citizenships#index"
end
