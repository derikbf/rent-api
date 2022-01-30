FactoryBot.define do 
  factory :category do 
    sequence(:name) { |n| "Category #{n}" }
    # sequence(:rental_company_id) { |n| "#{n}" }
  end
end