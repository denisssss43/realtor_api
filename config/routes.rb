Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :offers, path: 'cities/o_:offset/country_:city_id/', only: [:index]
      resources :offers, path: 'cities/country_:city_id/', only: [:index]

      resources :resources, path: 'cities/o_:offset/country_:city_id/', only: [:index]
      resources :resources, path: 'cities/country_:city_id/', only: [:index]
      resources :resources, only: :create
      
      resources :cities, path: 'cities/o_:offset/country_:country_id/', only: [:index]
      resources :cities, path: 'cities/o_:offset/', only: [:index]
 
      resources :countries, path: 'countries/o_:offset/', only: [:index]
    end
  end

end
