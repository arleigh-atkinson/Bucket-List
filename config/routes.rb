Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks"}
  root to: 'static_pages#home'
  resources :activities
  resources :comments

  resources :users, only: [:index, :show]

  get '/profile', to: 'users#profile', as: :profile

end