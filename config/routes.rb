Rails.application.routes.draw do
  devise_for :users
  
  root 'main#search'
  get 'search', to: 'main#search'
  post 'search', to: 'main#results'

  resources :favorites, only: [:create, :destroy]
  get 'favorites', to: 'main#favorites'

  get 'results', to: 'main#results', as: :results
end
