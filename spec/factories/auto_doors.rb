FactoryBot.define do 
  factory :auto_door do 
    sequence(:door) { rand(0..1) }
    rental_company_id { 1 } 
  end
end