Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users, only: [:show]
  get '/users/vcard/:id', to: 'users#vcard'
  as :user do
    get 'users', :to => 'users#show', :as => :user_root
  end
end
