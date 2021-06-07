Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :managements, only: %i[index create]
  resources :shops, only: %i[index create]
end