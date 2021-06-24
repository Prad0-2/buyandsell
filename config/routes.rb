Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'payments/index' 
  get 'payments/show'
  get '/products/:id/payment' ,to: 'payments#new'
  get '/payments/show/:id' , to: 'payments#show'
  post '/payments/create' , to: 'payments#create'
  get '/user/show', to:'home#show'
  get '/home/display', to: 'home#display'

  resources  :details
  resources :products do
    resources :additionals
  end

  resources :payments
  get 'details/index'
  get '/details/edit/:id/:product_id' , to: 'details#edit', as:'details_edit'
  patch '/details/edit' , to: 'details#update', as: 'updated_detail'
  get 'pages/home'
  devise_for :views
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :products 
    end
  end


end
