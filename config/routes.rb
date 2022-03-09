Rails.application.routes.draw do

  devise_for :client_devises
  root to: 'home#index'
end