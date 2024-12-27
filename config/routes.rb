Rails.application.routes.draw do
  devise_for :users
  
  root 'main#search'
  get 'search', to: 'main#search'
  post 'search', to: 'main#results'

  resources :favorites, only: [:create, :destroy]
  get 'favorites', to: 'main#favorites'

  get 'results', to: 'main#results', as: :results


  # おまけクイズページ
  #get 'bonus', to: 'main#bonus'

  # 出題範囲選択ページ
  get 'quiz/select', to: 'main#select_quiz_range', as: 'select_quiz_range'

  # クイズページ（範囲指定）
  get 'quiz/:range', to: 'main#bonus', as: 'quiz'
end
