Rails.application.routes.draw do

  namespace 'api' do
    namespace 'v1' do 
      
      resources :user_operators
      resources :user_consumers
      
      resources :customers do
        resources :customer_address
      end
      
      resources :rental_companies do
        resources :categories
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
      end

      resources :autos do
            end
      
    end
  end
end
