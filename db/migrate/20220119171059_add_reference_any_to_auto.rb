class AddReferenceAnyToAuto < ActiveRecord::Migration[6.1]
  def change
    add_reference :autos, :category, null: true, foreign_key: true
    add_reference :autos, :auto_brand, null: true, foreign_key: true
    add_reference :autos, :auto_type, null: true, foreign_key: true
    add_reference :autos, :auto_year, null: true, foreign_key: true
    add_reference :autos, :auto_mileage, null: true, foreign_key: true
    add_reference :autos, :auto_power, null: true, foreign_key: true
    add_reference :autos, :auto_fuel, null: true, foreign_key: true
    add_reference :autos, :auto_exchange, null: true, foreign_key: true
    add_reference :autos, :auto_direction, null: true, foreign_key: true
    add_reference :autos, :auto_color, null: true, foreign_key: true
    add_reference :autos, :auto_door, null: true, foreign_key: true
    add_reference :autos, :auto_plate, null: true, foreign_key: true
    add_reference :autos, :auto_model, null: true, foreign_key: true
    add_reference :autos, :auto_optional, null: true, foreign_key: true
    
    add_reference :user_operators, :rental_company, null: false, foreign_key: true
    add_reference :user_consumers, :rental_company, null: false, foreign_key: true
    add_reference :customers, :rental_company, null: false, foreign_key: true
  end
end
