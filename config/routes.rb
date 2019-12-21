Rails.application.routes.draw do
  resources :reactions
  resources :comments
  root to: 'readings#index'
  resources :questions
  resources :readings
end
