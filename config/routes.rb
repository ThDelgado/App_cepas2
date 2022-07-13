Rails.application.routes.draw do

  resources :scores
  resources :enologists
  resources :wine_strains
  resources :wines
  resources :strains
  
    devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
