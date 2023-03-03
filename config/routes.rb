Rails.application.routes.draw do
  get 'messages/create'
  devise_for :users
  root to: "pages#home"

  resources :bookings, only: [:index, :show]

  resources :event_spaces do
    resources :bookings, only: [:new, :create]

  end

  resources :bookings, only: [:index, :show, :edit, :update, :destroy]

  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end

end
