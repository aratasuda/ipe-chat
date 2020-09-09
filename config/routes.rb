Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'messages#index'

  get "messages/index", to: "messages#index"
  post "messages/create", to: "messages#create"
  get "messages/:id/edit", to: "messages#edit", as: "messages_edit"
  patch "messages/:id/update", to: "messages#update", as: "messages_update"
  delete "messages/:id/delete",to: "messages#destroy", as: "messages_delete"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'
  get '/signup', to: 'sessions#signup'
  post '/signup', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end