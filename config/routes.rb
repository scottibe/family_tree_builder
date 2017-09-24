Rails.application.routes.draw do

  resources :cities
  resources :states, only: [:index, :show]
  resources :people
  root 'welcome#home'

  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks"}

end
