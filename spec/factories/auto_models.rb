FactoryBot.define do 
  factory :auto_model do 
    sequence(:name) { |n| "ABC123#{n}" }
    rental_company_id { 1 } 
  end
end