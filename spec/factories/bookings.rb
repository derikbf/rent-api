FactoryBot.define do 
  factory :booking do 
    start_date { "2022-01-29" }
    end_date { "2022-01-30" }
    status { rand(0..2) }
    total { rand(1..100) }
    subtotal { rand(1..50) }
    perc_discount { rand(1..50) }
    discount { rand(1..50) }
    auto_id { 1 }
    customer_id { 1 }
    user_consumer_id { 1 }
  end
end
