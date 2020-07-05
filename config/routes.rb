Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
  }
  root 'home#top'
  get 'home/about'
  get "search" => "search#search"
  get 'users/unsubscribed'=> "users#unsubscribed"
  resources :users, only: [:show, :edit,:update ] do
    resource :relationships, only: [:create, :destroy]
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
  end
  put "/users/:id/hide" => "users#hide", as: 'users_hide'

  resources :articles do
    resource :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    resource :bookmarks, only: [:create, :destroy]
    collection do
    get :tags
    end
  end

  resources :historys, only: [:index, :show]
  resources :textiles, only: [:index, :show]
  resources :shops, only: [:index, :show]
  resources :sub_materials, only: [:index, :show]

  get 'inquiry/index'
  post 'inquiry/confirm'
  post 'inquiry/thanks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
