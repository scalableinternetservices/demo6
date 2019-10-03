Rails.application.routes.draw do
  root 'submissions#index'
  resources :comments, only: %w[create destroy new]
  resources :communities, only: %w[create destroy new show]
  resources :submissions, only: %w[create destroy new show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
