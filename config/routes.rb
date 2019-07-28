Rails.application.routes.draw do
  # トップページ
  root to: "toppages#index"
  
  # ログイン
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  # ログアウト
  delete "logout", to: "sessions#destroy"
  
  # 会員登録
  get "signup", to: "users#new"
  resources :users, only: [:show, :new, :create]
  
  # 水族館
  resources :aquarias, only: [:index, :show, :new, :create, :destroy]
end

