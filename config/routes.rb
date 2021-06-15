Rails.application.routes.draw do
  resources :products
  get 'details/index'
  get 'pages/home'
  devise_for :views
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
