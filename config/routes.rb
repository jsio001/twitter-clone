Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to:'pages#home'

  post 'pages/follow/:id', to: 'pages#relate', as: :follow
  delete 'pages/unfollow/:poster_id', to: 'pages#unrelate', as: :unfollow

  get 'pages/profile_user/:id', to: 'pages#profile_user', as: :profile_user
  # resources :profile, except: [:new, :index]

  resources :tweets, except: [:index, :new] do
    resources :tags
  end

end
