Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#home'

  devise_for :instructors, controllers: {
    sessions:      'instructors/sessions',
    passwords:     'instructors/passwords',
    registrations: 'instructors/registrations'
  },
  :path => '', :path_names => {:sign_in => 'instructors/login', :sign_up => 'instructors/touroku', :sign_out => 'instructors/logout'}
  
  devise_for :members, controllers: {
    sessions:      'members/sessions',
    passwords:     'members/passwords',
    registrations: 'members/registrations'
  },
  :path => '', :path_names => {:sign_in => 'members/login', :sign_up => 'members/sign_up', :sign_out => 'members/logout'}
  
end
