Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    member do
      delete 'photos/:photo_id', to: 'movies#destroy_photo', as: 'destroy_photo'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "movies#index"
end
