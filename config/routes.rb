Rails.application.routes.draw do
  #post 'warranties/ingresar_in', to:'warranties#ingresar_in', as:'warranties#ingresar_in'
post 'reserve/create', to: 'reserve#create', as: 'reserve_create'

  ActiveAdmin.routes(self)
  devise_for :client_devises
  root to: 'home#index'
end