FactoryBot.define do 
  factory :category do 
    sequence(:name) { |n| "Category #{n}" }
    rental_company_id { 1 }
  end
end