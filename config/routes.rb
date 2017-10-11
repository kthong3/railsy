Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  # # comment resources
  # get '/posts/:post_id/comments' => 'comments#index', as: post_comments
  # post '/posts/:post_id/comments' => 'comments#create'
  # get '/posts/:post_id/comments/new' => 'comments#new', as: new_post_comment
  # get '/posts/:post_id/comments/edit' => 'comments#edit', as: edit_post_comment
  # get '/posts/:post_id/comments/:id' => 'comments#show', as: post_comment
  # patch '/posts/:post_id/comments/:id' => 'comments#update'
  # put '/posts/:post_id/comments/:id' => 'comments#update'
  # delete '/posts/:post_id/comments/:id' => 'comments#destroy'

  # # post resources
  # get '/posts/:id' => '#index', as: post
  # post '/posts/:id' => '#create'
  # get '/posts/:id/new' => '#new', as: new_post
  # get '/posts/:id/edit' => '#edit', as: edit_post
  # get '/posts/:id/:id' => '#show', as: post
  # patch '/posts/:id' => '#update'
  # put '/posts/:id' => '#update'
  # delete '/posts/:id' => '#destroy'

  root "posts#index"

  get '/' => "posts#index"

  get '/about', to: 'pages#about'
end
