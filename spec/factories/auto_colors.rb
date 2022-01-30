FactoryBot.define do 
  factory :auto_color do 
    sequence(:name) { |n| "Color #{n}" }
    rental_company_id { 1 } 
  end
end