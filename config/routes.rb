Rails.application.routes.draw do
  resources :tobaccos
  resources :brands
  root 'home#index'
  resources :categories
  resources :flavors
  resources :flavor_groups
end
