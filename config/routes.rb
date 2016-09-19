Rails.application.routes.draw do
  root 'home#index'
  resources :categories
  resources :flavors
  resources :flavor_groups
end
