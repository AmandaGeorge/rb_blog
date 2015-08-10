Rails.application.routes.draw do

  root to: 'posts#index'

  # sessions routes
  get '/login', to: 'sessions#new'

  get '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]

  # pages routes
  get '/about', to: 'pages#show'

  # posts routes
  resources :posts, except: [:index]

  # users routes
  get '/profile', to: 'users#show'

  get '/signup', to: 'users#new'

  resources :users, except: [:show, :new]

  
end

#           Prefix Verb   URI Pattern                 Controller#Action
#             root GET    /                           posts#index
#     sessions_new GET    /sessions/new(.:format)     sessions#new
#  sessions_create GET    /sessions/create(.:format)  sessions#create
# sessions_destroy GET    /sessions/destroy(.:format) sessions#destroy
#            about GET    /about(.:format)            pages#show
#                  POST   /posts(.:format)            posts#create
#         new_post GET    /posts/new(.:format)        posts#new
#        edit_post GET    /posts/:id/edit(.:format)   posts#edit
#             post GET    /posts/:id(.:format)        posts#show
#                  PATCH  /posts/:id(.:format)        posts#update
#                  PUT    /posts/:id(.:format)        posts#update
#                  DELETE /posts/:id(.:format)        posts#destroy
#            users GET    /users(.:format)            users#index
#                  POST   /users(.:format)            users#create
#         new_user GET    /users/new(.:format)        users#new
#        edit_user GET    /users/:id/edit(.:format)   users#edit
#             user GET    /users/:id(.:format)        users#show
#                  PATCH  /users/:id(.:format)        users#update
#                  PUT    /users/:id(.:format)        users#update
#                  DELETE /users/:id(.:format)        users#destroy
