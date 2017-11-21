Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  mount_devise_token_auth_for 'User', at: 'auth', controllers: { omniauth_callbacks: 'v1/omniauth_callbacks' }

  namespace :v1, defaults: { format: :json } do
    resources :users, only: [:index, :create, :update, :destroy, :show]
    resources :posts, only: [:index, :create, :update, :destroy, :show]
    resources :comments, only: [:create, :update, :destroy, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
