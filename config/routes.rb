Rails.application.routes.draw do
  
  resources :schedules
  resources :consultations
  devise_for :users
  root 'welcome#index'

end
