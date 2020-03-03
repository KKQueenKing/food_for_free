Rails.application.routes.draw do
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
