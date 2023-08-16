Rails.application.routes.draw do
  devise_for :users
  resources :blogings
  root "blogings#index"
end
