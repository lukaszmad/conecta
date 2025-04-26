Rails.application.routes.draw do
  devise_for :users
  
  # Strona główna
  root to: 'home#index'
  
  # Ustawienia użytkownika
  get 'settings', to: 'home#settings'
  patch 'settings', to: 'home#update_settings', as: 'update_settings'
  
  # Zagnieżdżone zasoby
  resources :customers do
    resources :notes, only: [:create, :destroy]
  end
end
