Rails.application.routes.draw do
  
  root to: 'index#index'
  get '/contact', to: 'contact#contact'
  get '/team', to: 'team#team'
  get '/welcome/:first_name', to: 'welcome#welcome', as: 'salut'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
