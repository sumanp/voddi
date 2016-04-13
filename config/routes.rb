Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :activities do
    resources :submissions, only: [:create, :destroy]
  end
  get 'pages/disclaimer'

  resources :projects do
    resources :messages

  end

  devise_for :users, :controllers => { registrations: 'registrations' }
  authenticated :user do
    root 'projects#index', as: :authenticated_root
  end

  resources :project_users


  root 'pages#index'


end
