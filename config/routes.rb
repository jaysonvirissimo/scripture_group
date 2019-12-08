Rails.application.routes.draw do
  resources :comments
  root to: 'readings#index'
  resources :questions
  resources :readings
end
