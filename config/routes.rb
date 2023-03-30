Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :hotels do
        resources :rooms, only: [:create]
      end
      resources :rooms, only: [:index, :destroy, :update, :show]
    end
  end
end
