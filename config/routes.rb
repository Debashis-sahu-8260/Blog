Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users' }
  resources :blogings
  root "blogings#index"
end
