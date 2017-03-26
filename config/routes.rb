Rails.application.routes.draw do
  devise_for :users
  get 'dashboards/index'

  resources :categories
  resources :routine_types
  resources :routines
  resources :reminders
  resources :timers
  resources :activities

  root to: 'dashboards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
