Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # http://localhost:3000/へのアクセス
  root :to => 'books#top'

  # RESTfulなURLのルーティング自動設定
  resources :books

 
end
