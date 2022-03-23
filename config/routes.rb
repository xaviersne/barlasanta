Rails.application.routes.draw do
  resources :pruebas
  resources :appointments
  resources :edit
  #post 'warranties/ingresar_in', to:'warranties#ingresar_in', as:'warranties#ingresar_in'
post 'reserve/create', to: 'reserve#create', as: 'reserve_create'
get 'reserves', to: 'reserve#index'

  ActiveAdmin.routes(self)
  devise_for :client_devises
  root to: 'home#index'
end