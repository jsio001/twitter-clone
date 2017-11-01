Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'pages#home'


  post 'pages/follow/:id', to: 'pages#relate', as: :follow
  delete 'pages/unfollow/:poster_id', to: 'pages#unrelate', as: :unfollow

  resources :tweets do
    resources :tags, except: [:edit, :update]
  end

end
