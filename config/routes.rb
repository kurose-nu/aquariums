Rails.application.routes.draw do
  # トップページ
  root to: "toppages#index"
  
  # 会員登録
  get "signup", to: "users#new"
  resources :users, only: [:show, :new, :create]
end

