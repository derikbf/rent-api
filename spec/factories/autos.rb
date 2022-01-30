FactoryBot.define do 
  factory :auto do 
    sequence(:name) { |n| "Category #{n}" }
    unit_price { rand(1..500) }
    rental_company_id { 1 } 
    category_id { 1 } 
  end
end
