Rails.application.routes.draw do
  
  resources :gossips, only: [:new, :create]
  get '/', to: 'static_pages#index', as: 'index'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/welcome/:first_name', to: 'static_pages#welcome', as: 'salut'
  get '/home/:potin', to: 'static_pages#potin', as: 'potin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
