Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'style-guide', to: 'pages#style_guide'
  get 'about', to: 'pages#about'
  get 'my_profile', to: 'pages#my_profile', as: :my_profile
  get 'profile/:user', to: 'pages#profile', as: :profile

  resources :donations do
    resources :donation_availabilities, only: [:new, :create]
    resources :food_items, only: [:new, :create]
    resources :claims, only: [:new, :create]
    resources :food_item_tags, only: [:create]
  end

  resources :food_items, except: [:new, :create]
  resources :donation_availabilities, only: [:edit, :update, :destroy]
  resources :food_item_tags, only: [:destroy]

  resources :claims, only: [:show, :destroy] do
    resources :reviews, only: [:new, :create] # only appears for charity
    resources :no_shows, only: [:create] # only appears for business
  end

  resources :no_shows, only: [:destroy]
  resources :reviews, only: [:edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# build your donation; donation create page. then redirect to edit instance to add new food items
