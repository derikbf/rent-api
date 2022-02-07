# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Faker::Config.locale = 'pt-BR'
p "Inicio do cadastro do Rental Company"
1.times do 
  rental = RentalCompany.create({
    corporate_name: Faker::Company.unique.name,
		fantasy_name: Faker::Company.industry,
    phone: Faker::PhoneNumber.unique.subscriber_number(length: 15),
    cel_phone: Faker::PhoneNumber.unique.subscriber_number(length: 15),
    email: Faker::Internet.unique.email,
    cnpj: Faker::Company.unique.brazilian_company_number
  })
end
p "Fimn do cadastro do Rental Company"

p "Inicio do cadastro do User Operator"
15.times do
  user_operator = UserOperator.create({
    rental_company_id: 1,
    name: Faker::FunnyName.unique.name,
    username: Faker::FunnyName.unique.two_word_name,
    email: Faker::Company.unique.name,
    password_digest: "123456789",
    cpf: Faker::Number.unique.number(digits: 11),
    phone: Faker::PhoneNumber.unique.subscriber_number(length: 15)
  })
end
p "Fim do cadastro do User Operator"

p "Inicio do cadastro do User"
15.times do
  user = User.create({
    rental_company_id: 1,
    name: Faker::FunnyName.unique.name,
    username: Faker::FunnyName.unique.two_word_name,
    email: Faker::Company.unique.name,
    password_digest: "123456789",
    cpf: Faker::Number.unique.number(digits: 11),
    phone: Faker::PhoneNumber.unique.subscriber_number(length: 15)
  })
end
p "Fium do cadastro do User"

p "Inicio do cadastro do Customer"
15.times do
  customer = Customer.create({
    rental_company_id: 1,
    corporate_name: Faker::Company.unique.name,
		fantasy_name: Faker::Company.industry,
    phone: Faker::PhoneNumber.unique.subscriber_number(length: 15),
    cel_phone: Faker::PhoneNumber.unique.subscriber_number(length: 15),
    email: Faker::Internet.unique.email,
    cnpj: Faker::Company.unique.brazilian_company_number
  })
end
p "Fim do cadastro do Customer"

p "Inicio do cadastro do Customer Address"
15.times do |i|
  customer_address = CustomerAddress.create({
    customer_id: "#{i}",
    number: Faker::Address.building_number,
    street: Faker::Address.street_name,
    complement: Faker::Address.community,
    country: "Brasil",
    district: Faker::Address.city,
    city: Faker::Address.city,
    uf: Faker::Address.state,
    cep: Faker::Number.number(digits: 8)
  })
end
p "Fim do cadastro do Customer Address"

p "Inicio do cadastro do Category"
10.times do
  category = Category.create({
    rental_company_id: 1,
    name: Faker::Vehicle.unique.car_type,
		description: Faker::Company.industry    
  })
end
p "Fim do cadastro do Category"

p "Inicio do cadastro do Autos"
15.times do
  brand = AutoBrand.create({
    rental_company_id: 1,
    name: Faker::Vehicle.unique.manufacture	
  })
end

10.times do
  color = AutoColor.create({
    rental_company_id: 1,
    name: Faker::Vehicle.unique.color	
  })
end

2.times do |i|
  direction = AutoDirection.create({
    rental_company_id: 1,
    direction: rand(0..1)	
  })
end

2.times do |i|
  door = AutoDoor.create({
    rental_company_id: 1,
    door: rand(0..1)	
  })
end

2.times do
  exchange = AutoExchange.create({
    rental_company_id: 1,
    exchange: rand(0..1)		
  })
end

4.times do
  fuel = AutoFuel.create({
    rental_company_id: 1,
    fuel: rand(0..1)		
  })
end

15.times do |i|
  mileage = AutoMileage.create({
    rental_company_id: 1,
    mileage: "#{220+i}"	
  })
end

12.times do
  model = AutoModel.create({
    rental_company_id: 1,
    name: Faker::Vehicle.unique.make_and_model
  })
end

15.times do |i|
  plate = AutoPlate.create({
    rental_company_id: 1,
    name: "#{i}"
  })
end

12.times do
  power = AutoPower.create({
    rental_company_id: 1,
    power: rand(0..50)	
  })
end

10.times do
  type = AutoType.create({
    rental_company_id: 1,
    name: Faker::Device.unique.manufacturer	
  })
end

12.times do |i|
  year = AutoYear.create({
    rental_company_id: 1,
    year: "#{2002+i}"	
  })
end

15.times do
  optional = AutoOptional.create({
    rental_company_id: 1,
    air_bag: rand(0..1),
    eletric_glass: rand(0..1),	
    eletrick_lock: rand(0..1),	
    air_conditioner: rand(0..1),	
    alarm: rand(0..1),	
    sound: rand(0..1),	
    on_board_computer: rand(0..1),	
    reverse_sensor: rand(0..1), 
    abs_brakes: rand(0..1), 
    reverse_camera: rand(0..1)
  })
end

10.times do |i|
  auto = Auto.create({
    name: Faker::Vehicle.unique.manufacture,
    description: Faker::Vehicle.style,
    unit_price: rand(1..5000),
    rental_company_id: 1,
    category_id: rand(1..10),
    auto_brand_id: rand(1..10),	
    auto_type_id: rand(1..10),	
    auto_mileage_id: rand(1..10),	
    auto_power_id: rand(1..10),	
    auto_fuel_id: rand(1..4),	
    auto_exchange_id: rand(1..2),	
    auto_door_id: rand(1..2), 
    auto_direction_id: rand(1..2), 
    auto_color_id: rand(1..10), 
    auto_plate_id: rand(1..10),
    auto_model_id: rand(1..10),
    auto_optional_id: rand(1..10)
  })
end
p "Fim do cadastro do Autos"

p "Inicio do cadastro do Booking"
10.times do |i|
  booking = Booking.create({
    auto_id: "#{i}",
    customer_id: "#{i}",
    start_date: "2022-#{i}-#{i}",
    end_date: "2022-#{i}-#{i}",
    total: 150
  })
end
p "Fim do cadastro do Booking"