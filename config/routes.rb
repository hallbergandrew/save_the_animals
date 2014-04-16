SaveAnimals::Application.routes.draw do

  root :to => 'profiles#index'

  resources :animals do
    resources :breeds
    resources :profiles
  end
  resources :breeds do
    resources :profiles
  end

  resources :profiles

  resources :users do
    resources :profiles
  end

  resources :countries
  resources :states

get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
delete 'logout', to: 'sessions#destroy', as: 'logout'

resources :sessions





  # get "users/index"
  # get "users/create"
  # get "users/new"
  # get "users/destroy"
  # get "users/show"
  # get "breeds/index"
  # get "breeds/create"
  # get "breeds/new"
  # get "breeds/destroy"
  # get "breeds/show"
  # get "animals/index"
  # get "animals/create"
  # get "animals/new"
  # get "animals/destroy"
  # get "animals/show"
  # get "profiles/index"
  # get "profiles/create"
  # get "profiles/new"
  # get "profiles/destroy"
  # get "profiles/show"
end
