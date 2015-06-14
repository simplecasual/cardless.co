Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/users/vcard/:id', to: 'users#vcard'
  resources :users, :path => '' do
  end
end
