Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :offers, only: [:index]
      resources :resources, only: [:index, :create]

      resources :cities, path: 'cities/offset_:offset/country_:country/', only: [:index]
      resources :cities, path: 'cities/offset_:offset/', only: [:index]

      resources :countries, only: [:index]
    end
  end

end
