Rails.application.routes.draw do
  resources :jobs
  root 'jobs#index'
  devise_for :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
