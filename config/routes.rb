Rails.application.routes.draw do
  resources :comments
  resources :submissions
  resources :communities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
