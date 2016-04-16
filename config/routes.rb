Rails.application.routes.draw do

  devise_for :admins
  root "home#index"
  get "home/index"

  namespace :admins do
    resources :employees
    resources :students
    resources :news
  end

  namespace :students do
    get '/news_disply' => "custom#news_disply"
  end
end
