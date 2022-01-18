Rails.application.routes.draw do

  namespace 'api' do
    namespace 'v1' do 
      
      resources :user_operators
      resources :user_consumers

      resources :customers do
        resources :customer_address
      end
      
    end
  end
end
