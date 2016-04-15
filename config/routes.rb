Rails.application.routes.draw do

  devise_for :admins
  root "home#index"
  get "home/index"

  namespace :admins do
    resources :employees
    resources :students
  end
end
