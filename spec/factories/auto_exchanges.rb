FactoryBot.define do 
  factory :auto_exchange do 
    sequence(:exchange) { rand(0..1) }
    rental_company_id { 1 } 
  end
end