Rails.application.routes.draw do
  devise_for :users
  root to: 'managements#index'
  resources :managements, only: %i[index new]
  resources :shops, only: %i[index]
end