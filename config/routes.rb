Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :offers, path: "offers/:qwe_qwe/", only: [:index, :show]
      # resources :cities, only: [:index, :show]
      # resources :countries, only: [:index, :show]

      resources :resources, only: [:index, :show, :create]

    end
  end

end
