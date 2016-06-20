Rails.application.routes.draw do

  resources :urls, only: [ :index, :new, :create, :show ]

  root to: "home#index"
end
