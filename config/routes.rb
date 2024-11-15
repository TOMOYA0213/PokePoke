Rails.application.routes.draw do
  root 'main#search'
  get 'search', to: 'main#search'
  post 'search', to: 'main#results'
end
