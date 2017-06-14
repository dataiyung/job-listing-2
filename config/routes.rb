Rails.application.routes.draw do
root 'jobs#index'
devise_for :users
resources :jobs
namespace :admin do
  resources :jobs do
  member do
    post :publish
    post :hide
  end
  end

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  end
