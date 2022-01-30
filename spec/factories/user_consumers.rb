FactoryBot.define do 
  factory :user_consumer do 
    sequence(:name) { |n| "User Consumer #{n}" }
    sequence(:username) { |n| "Userconsumer#{n}" }
    sequence(:email) { |n| "userconsumer#{n}@gmail.com" }
    password_digest { "123456789" }
    cpf { Faker::PhoneNumber.unique.subscriber_number(length: 11) }
    phone { Faker::PhoneNumber.unique.subscriber_number(length: 15) }
    rental_company_id { 1 }
  end
end
