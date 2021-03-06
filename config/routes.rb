Rails.application.routes.draw do


  get '/users', to: 'users#index'
  resources :users


  get '/login', to: 'sessions#login_form', as: 'login'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'


  root 'works#index'
  post '/works/:id/upvote', to: 'works#upvote', as: 'upvote'
  get '/:category/new', to: 'works#new', as: 'new_works'

  resources :works

  get '/votes/index', to: 'votes#index'

  get '/:category', to: 'works#show_category', as: 'category'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
