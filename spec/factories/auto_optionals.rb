FactoryBot.define do 
  factory :auto_optional do 
    eletric_glass { rand(0..1) }
    air_bag { rand(0..1) }
    eletrick_lock { rand(0..1) }
    air_conditioner { rand(0..1) }
    alarm { rand(0..1) }
    sound { rand(0..1) }
    on_board_computer { rand(0..1) }
    abs_brakes { rand(0..1) }
    reverse_sensor { rand(0..1) }
    reverse_camera { rand(0..1) }
    
    rental_company_id { 1 } 
  end
end
