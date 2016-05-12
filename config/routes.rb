Rails.application.routes.draw do
  get 'notifications/index'

  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  resources :jenishotels
  resources :menurestorans
  resources :albumfotohotels
  resources :albumfotorestorans
  resources :videos
  resources :restaurants
  resources :hotels
  resources :sarans
  resources :comments
  resources :notifications, only:[:index]
  resources :reviews, only: [:create, :destroy] do
    member do
      put "like", to: "reviews#like"
      put "dislike", to: "reviews#dislike"
    end
  end

  resources :relationships, only: [:create, :destroy]
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}


  resources :users, only: [:show, :index] do
    member do
      get :following, :followers
    end
  end

  resources :beritas
  resources :daerahs
  resources :kategoris
  resources :guide_wisatas, only: [:create, :destroy]

  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'privacy' => 'static_pages#privacy'
  get 'contact' => 'static_pages#contact'
  get 'popular-location' => 'static_pages#popular_location'
  get 'saran' => 'sarans#new'

  devise_for :admins, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  devise_for :guides

  resources :wisatas do
    member do
      put "like", to: "wisatas#like"
      put "dislike", to: "wisatas#dislike"
      get 'album'
    end
    resources :reviews, only: [:create, :destroy]
  end

  resources :guides, only: [:show, :index] do
    member do
      put "like", to: "guides#like"
      put "dislike", to: "guides#dislike"
    end
    resources :reviews, only: [:create, :destroy]
  end

end
