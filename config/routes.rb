Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lessons, except: :destroy do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :clubs, except: :destroy do
     resources :club_registrations, only: [:new, :create, :show]
   end

  resources :bookings, only: [:edit, :update, :destroy]
  resources :users, only: :show



end

