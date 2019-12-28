Rails.application.routes.draw do
  resources :reactions
  resources :comments
  root to: 'readings#index'
  resources :readings
end
