FactoryBot.define do 
  factory :auto_type do 
    sequence(:name) { |n| "Type #{n}" }
    rental_company_id { 1 } 
  end
end
