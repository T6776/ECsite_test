Rails.application.routes.draw do
  root to: 'homes#top'

  resources :items
  resources :cart_items, only: [ :create, :update, :index, :destroy]

end
