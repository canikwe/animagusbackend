Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :pets, only: [:index, :show, :update, :delete, :create]
      resources :characteristics, only: [:index]
      resources :pet_characteristics, only: [:update]
    end
  end
end
