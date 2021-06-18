Rails.application.routes.draw do
  
  get 'payments/index' 
  get 'payments/show'
  get '/products/:id/payment' ,to: 'payments#new'
 

  resources  :details
  resources :products do
    resources :additionals
  end

  resources :payments
  get 'details/index'
  get '/details/edit/:id' , to: 'details#edit', as:'details_edit'
  patch '/details/edit' , to: 'details#update', as: 'updated_detail'
  get 'pages/home'
  devise_for :views
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
