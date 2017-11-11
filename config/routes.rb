Rails.application.routes.draw do
  devise_for :users, only: []# , controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :v1, defaults: { format: :json } do
    resources :login, only: [:create], controller: :sessions
    resources :users, only: [:index, :create, :update, :destroy, :show]
    resources :posts, only: [:index, :create, :update, :destroy, :show]
    resources :comments, only: [:create, :update, :destroy, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
