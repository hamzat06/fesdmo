Rails.application.routes.draw do
  root "static#home"
  resources :patients
  resources :reports
  resources :patient_reports
  resources :doctors
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete 'logout', to: 'sessions#destroy'
end