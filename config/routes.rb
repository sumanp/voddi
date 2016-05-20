Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :activities do
    resources :submissions, only: [:create, :destroy]
  end

  resources :projects do
    resources :messages

  end

  devise_for :users, :controllers => { registrations: 'registrations' }
  authenticated :user do
    root 'projects#index', as: :authenticated_root
  end

  get 'pages/disclaimer'
  get 'pages/contact'
  get 'pages/about'




  resources :project_users


  root 'pages#index'


end
