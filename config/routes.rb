Rails.application.routes.draw do
  resources :blogings
  root "blogings#index"
end
