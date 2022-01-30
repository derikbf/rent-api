FactoryBot.define do 
  factory :auto_mileage do 
    sequence(:mileage) { |n| "ABC123#{n}" }
    rental_company_id { 1 } 
  end
end