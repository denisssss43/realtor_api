Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :offers, only: [:index, :show]
      # resources :cities, only: [:index, :show]
      # resources :countries, only: [:index, :show]

      resources :resources 

    end
  end

end
