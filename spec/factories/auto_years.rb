FactoryBot.define do 
  factory :auto_year do 
    sequence(:year) { rand(1980..2020) }
    rental_company_id { 1 } 
  end
end
