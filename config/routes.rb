Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'
  get 'no_shows/create'
  get 'no_shows/destroy'
  get 'claims/create'
  get 'claims/destroy'
  get 'food_donations/index'
  get 'food_donations/show'
  get 'food_donations/new'
  get 'food_donations/create'
  get 'food_donations/edit'
  get 'food_donations/update'
  get 'food_donations/destroy'
  get 'businesses/resources'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
