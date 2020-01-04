Rails.application.routes.draw do
  resources :reactions
  root to: 'readings#index'
  resources :readings
end
