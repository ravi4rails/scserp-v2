Rails.application.routes.draw do

  devise_for :admins
  root "home#index"
  get "home/index"

  namespace :admins do
    resources :employees
    resources :students
    resources :news
    resources :departments
    resources :courses
    resources :subjects
  end

  namespace :students do
    get '/news_disply' => "custom#news_disply"
  end
end
