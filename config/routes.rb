Rails.application.routes.draw do
  devise_for :users, controllers: { registration: 'users' }
  resources :blogings
  root "blogings#index"
end
