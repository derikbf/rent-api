Rails.application.routes.draw do

  namespace 'api' do
    namespace 'v1' do 
      
      resources :users

      resources :customers do
        resources :customer_address
      end
      
    end
  end
end
