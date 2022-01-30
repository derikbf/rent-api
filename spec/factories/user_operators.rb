FactoryBot.define do 
  factory :user_operator do 
    sequence(:name) { |n| "User Operator #{n}" }
    sequence(:username) { |n| "Useroperator#{n}" }
    sequence(:email) { |n| "useroperator#{n}@gmail.com" }
    password_digest { "123456789" }
    cpf { Faker::PhoneNumber.unique.subscriber_number(length: 11) }
    phone { Faker::PhoneNumber.unique.subscriber_number(length: 15) }
    rental_company_id { 1 }
  end
end
