Rails.application.routes.draw do
  get 'questions/users'
  get 'questions/tests'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  resources :user_answers, only: [:create]
  resources :dashboard, only: %i[show edit update]
  resources :tests, only: %i[index show] 
  resources :questions, only: %i[show]

