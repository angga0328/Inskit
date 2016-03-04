Rails.application.routes.draw do
  resources :albumfotohotels
  resources :albumfotorestorans
  resources :videos
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  resources :restaurants
  resources :hotels
  resources :sarans
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'privacy' => 'static_pages#privacy'
  get 'contact' => 'static_pages#contact'
  get 'popular-location' => 'static_pages#popular_location'
  resources :reviews, only: [:create, :destroy]
  devise_for :admins, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  devise_for :guides
  resources :beritas
  resources :daerahs
  resources :kategoris
  resources :wisatas do
    member do
      put "like", to: "wisatas#like"
      put "dislike", to: "wisatas#dislike"
      get 'album'
    end
    resources :reviews, only: [:create, :destroy]
  end
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"} 
  resources :users, only: [:show, :index]
  resources :guides, only: [:show, :index] do
    member do
      put "like", to: "guides#like"
      put "dislike", to: "guides#dislike"
    end
    resources :reviews, only: [:create, :destroy]
  end
  resources :guide_wisatas, only: [:create, :destroy]
end
