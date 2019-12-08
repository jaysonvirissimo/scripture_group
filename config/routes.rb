Rails.application.routes.draw do
  root to: 'readings#index'
  resources :questions
  resources :readings
end
