Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  # post '/cocktails', to: 'cocktails#create'
  # get '/cocktails/new', to: 'cocktails#new'
  # get '/cocktails/:id', to: 'cocktails#show'
  # get '/cocktails', to: 'cocktails#index'

  # get '/cocktails/:id/doses/new', to: 'doses#new'
  # post '/cocktails/:id/doses', to: 'doses#create'

  # delete 'doses/:id', to: 'doses#destroy'
end
