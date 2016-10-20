Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jobs do
  	resources :resumes
  end

  namespace :admin do
  	resources :jobs do
  		member do
  			post :hide
  			post :publish
  		end
  	end

    resources :users 
    
  end

  root "jobs#index"
end
