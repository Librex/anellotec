Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#home'

  devise_for :instructors, controllers: {
      sessions:      'instructors/sessions',
      passwords:     'instructors/passwords',
      registrations: 'instructors/registrations'
    }
    
  devise_for :members, controllers: {
    sessions:      'members/sessions',
    passwords:     'members/passwords',
    registrations: 'members/registrations'
  }
  
  resources :instructors, only: [:show]
  resources :members, only: [:show]
  
  resources :courses do
    resources :sections
  end
end
