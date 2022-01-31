Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do 
      resources :customers do
        resources :customer_address
      end
      
      resources :rental_companies do
        resources :categories
        resources :customers 
        resources :user_operators
        resources :users 
       
        resources :autos
        resources :auto_models
        resources :auto_brands
        resources :auto_plates
        resources :auto_doors
        resources :auto_colors
        resources :auto_directions
        resources :auto_exchanges
        resources :auto_fuels
        resources :auto_powers
        resources :auto_mileages
        resources :auto_years
        resources :auto_types
        resources :auto_optionals

        get :my_bookings, to: 'rental_companies#my_bookings'
      end

      resources :autos do
        resources :bookings
      end

      resources :bookings do
        resources :ratings
      end

    end
  end
end
