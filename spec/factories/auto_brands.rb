FactoryBot.define do 
  factory :auto_brand do 
    sequence(:name) { |n| "Brand #{n}" }
    rental_company_id { 1 } 
  end
end