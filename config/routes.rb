Rails.application.routes.draw do

  resources :urls, only: [ :index, :new, :create, :show, :update, :edit ]

  root to: "home#index"
end
