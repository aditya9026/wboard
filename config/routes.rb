Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  get 'home/help'
  get 'home/about'
 
  root 'home#index'
end
