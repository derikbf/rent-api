FactoryBot.define do 
  factory :auto_power do 
    sequence(:power) { rand(1..3) }
    rental_company_id { 1 } 
  end
end
