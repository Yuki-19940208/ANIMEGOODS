Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  get 'items/index'
  get 'items/show'
  get 'items/edit'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
