Rails.application.routes.draw do
  get 'pages/disclaimer'

  resources :projects
  devise_for :users, :controllers => { registrations: 'registrations' }
  authenticated :user do
    root 'projects#index', as: :authenticated_root
  end

  resources :project_users


  root 'pages#index'
  

end
