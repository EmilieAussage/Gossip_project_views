Rails.application.routes.draw do
  resources :contacts
  resources :teams
  resources :lier_private_message_users
  resources :join_table_tag_gossips
  resources :comments
  resources :private_messages
  resources :tags
  resources :likes
  resources :cities
  resources :users
  resources :gossips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
