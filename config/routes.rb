Rails.application.routes.draw do
  get "estudiantes" => "estudiantes#index"
  post "estudiantes" => "estudiantes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
