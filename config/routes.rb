Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :v1, defaults: { format: :json } do
    resources :users, only: [:index, :create, :update, :destroy, :show]
    resources :posts, only: [:index, :create, :update, :destroy, :show]
    resources :comments, only: [:create, :update, :destroy, :show]
    resources :charges, only: [:create, :charge]
    resources :images, only: [:show, :update]
    post '/posts/myquestions', to: 'posts#myquestions'
    post '/posts/myanswers', to: 'posts#myanswers'
    post '/posts/:id', to: 'posts#show'
    post '/posts/comment/:id', to: 'posts#comment'
    post '/charges/charge', to: 'charges#charge'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
