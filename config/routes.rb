Rails.application.routes.draw do

  devise_for :admins
  root "home#index"
  get "home/index"

  namespace :admins do

    # Admin Resources
    resources :employees
    resources :students
    resources :news
    resources :departments
    resources :courses
    resources :subjects
    resources :semesters

    # Admin Custom Actions
    get '/admin_dashboard' => "dashboard#admin_dashboard"
  end

  namespace :students do
    get '/news_disply' => "custom#news_disply"
  end
end
