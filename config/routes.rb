Rails.application.routes.draw do
  get 'reports/index'
  resources :coordinator_check_ins
  resources :coordinators
  resources :officer_check_ins
  resources :officers
  resources :member_check_ins
  resources :events
  resources :event_types
  resources :event_statuses
  resources :sponsors
  resources :sponsor_types
  resources :members
  resources :student_classes
  resources :states
  resources :countries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get "", to: "welcome#index", as: "home"
  get "/reports", to: "reports#index", as: "reports"
end
