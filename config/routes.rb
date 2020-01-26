Rails.application.routes.draw do
  resources :sections
  resources :reactions
  root to: 'readings#index'
  resources :readings
end
