Rails.application.routes.draw do
  resources :chats
  resources :channel_users
  resources :channels
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
