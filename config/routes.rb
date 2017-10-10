Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  root "posts#index"
  get '/' => "posts#index"

  get '/about', to: 'pages#about'
end
