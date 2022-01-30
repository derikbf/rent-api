FactoryBot.define do 
  factory :rating do 
    star { rand(0..4) }
    booking_id { 1 }
  end
end