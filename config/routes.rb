Rails.application.routes.draw do
  resources :projects, except: [:show]
  get 'project/:id', to: 'projects#show', as: 'project/show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
