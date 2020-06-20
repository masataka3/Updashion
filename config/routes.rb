Rails.application.routes.draw do

  devise_for :users,:controllers => {
    :registrations => 'users/registrations',
  }
  root 'home#top'
  get 'home/about'
  resources :users
  resources :articles do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
end
  resources :categorys
  resources :historys
  resources :textiles
  resources :shops
  resources :sub_materials

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
