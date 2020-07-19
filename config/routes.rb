# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  #  devise_scope :user do
  #   post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  # end
  root 'home#top'
  get 'home/about'
  post '/home/guest_sign_in', to: 'home#new_guest'
  get 'users/unsubscribed' => 'users#unsubscribed'
  resources :users, only: %i(show edit update) do
    resource :relationships, only: %i(create destroy)
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
  end
  put '/users/:id/hide' => 'users#hide', as: 'users_hide'

  resources :articles do
    resource :comments, only: %i(create destroy)
    resource :favorites, only: %i(create destroy)
    resource :bookmarks, only: %i(create destroy)
    collection do
      get :tags
    end
  end

  resources :historys, only: %i(index show)
  resources :textiles, only: %i(index show)
  resources :shops, only: %i(index show)
  resources :sub_materials, only: %i(index show)

  get 'inquiry/index'
  post 'inquiry/confirm'
  post 'inquiry/thanks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
