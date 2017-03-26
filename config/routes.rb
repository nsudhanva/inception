Rails.application.routes.draw do
  resources :categories
  resources :routine_types
  resources :routines
  resources :reminders
  resources :timers
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
