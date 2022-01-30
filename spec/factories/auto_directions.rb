FactoryBot.define do 
  factory :auto_direction do 
    sequence(:direction) { rand(0..1) }
    rental_company_id { 1 } 
  end
end