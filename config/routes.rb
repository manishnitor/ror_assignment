Rails.application.routes.draw do
  resources :enrollments
  resources :participants
  resources :coordinators
  resources :registries
  resources :reports
  get 'download_csv', to: 'reports#download_csv'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
end
