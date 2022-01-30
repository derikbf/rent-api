FactoryBot.define do 
  factory :auto_fuel do 
    sequence(:fuel) { rand(0..3) }
    rental_company_id { 1 } 
  end
end