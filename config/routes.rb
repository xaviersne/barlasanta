Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :client_devises
  root to: 'home#index'
end