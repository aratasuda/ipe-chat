Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "messages/index", to: "messages#index"
  
  get "/", to:"messages#index"
end
