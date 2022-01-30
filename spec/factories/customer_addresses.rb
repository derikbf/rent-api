FactoryBot.define do
  factory :customer_address do
    user_id { rand(1..10) }
    number { Faker::Address.building_number }
    street { Faker::Address.street_name }
    complement { Faker::Address.community }
    country { "Brasil" }
    district { Faker::Address.city }
    uf { Faker::Address.state }
    cep { "12345678" }
  end
end