FactoryBot.define do 
  factory :user do 
    sequence(:name) { |n| "Userr #{n}" }
    sequence(:username) { |n| "User#{n}" }
    sequence(:email) { |n| "user#{n}@gmail.com" }
    password_digest { "123456789" }
    cpf { Faker::PhoneNumber.unique.subscriber_number(length: 11) }
    phone { Faker::PhoneNumber.unique.subscriber_number(length: 15) }
    rental_company_id { 1 }
  end
end
