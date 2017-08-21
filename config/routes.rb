Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#home'

  devise_for :instructors, path: "instructors", controllers: {
      sessions:      'instructors/sessions',
      passwords:     'instructors/passwords',
      registrations: 'instructors/registrations'
    }, path_names: { sign_up: 'touroku'}
    
  devise_for :members, controllers: {
    sessions:      'members/sessions',
    passwords:     'members/passwords',
    registrations: 'members/registrations'
  }
  
  resources :instructors, only: [:show]
  resources :members, only: [:show]
  
  resources :courses do
    resources :sections
    resources :subscriptions, only: [:create]
  end
  
  get '/purchase_history' => 'subscriptions#purchase_history'
end
