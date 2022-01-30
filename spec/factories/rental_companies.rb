FactoryBot.define do
  factory :rental_company do
    corporate_name { Faker::Company.unique.name }
    fantasy_name { Faker::Company.unique.name }
    phone { Faker::PhoneNumber.unique.subscriber_number(length: 15) }
    cel_phone { Faker::PhoneNumber.unique.subscriber_number(length: 15) }
    email { Faker::Internet.unique.email }
    cnpj { Faker::Company.unique.brazilian_company_number }
  end
end
