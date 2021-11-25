Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:new, :index] do

        # resources :teachers, except: [:new, :edit]
      end
      resources :bookings, except: [:new, :edit]
      resources :teachers, only: [:index, :show, :create, :update] do
        resources :bookings, only: [:index]
      end
      resources :students, only: [:index, :show, :create, :update] do
        resources :bookings, only: [:index]
      end
    end
  end
end
