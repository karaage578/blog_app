Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "posts#index"
  get "/posts/:id" => "posts#show"
  get "/posts/new" => "posts#new"
  post "/posts/create" => "posts#create"
end
