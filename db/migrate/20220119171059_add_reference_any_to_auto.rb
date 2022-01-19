class AddReferenceAnyToAuto < ActiveRecord::Migration[6.1]
  def change
    add_reference :autos, :category, null: true, foreign_key: true
    add_reference :autos, :auto_brand, null: true, foreign_key: true
    add_reference :autos, :auto_types, null: true, foreign_key: true
    add_reference :autos, :auto_years, null: true, foreign_key: true
    add_reference :autos, :auto_mileages, null: true, foreign_key: true
    add_reference :autos, :auto_powers, null: true, foreign_key: true
    add_reference :autos, :auto_fuels, null: true, foreign_key: true
    add_reference :autos, :auto_exchange, null: true, foreign_key: true
    add_reference :autos, :auto_directions, null: true, foreign_key: true
    add_reference :autos, :auto_colors, null: true, foreign_key: true
    add_reference :autos, :auto_doors, null: true, foreign_key: true
    add_reference :autos, :auto_plates, null: true, foreign_key: true
    add_reference :autos, :auto_models, null: true, foreign_key: true
    add_reference :autos, :auto_optionals, null: true, foreign_key: true
    
    add_reference :user_operators, :rental_company, null: false, foreign_key: true
    add_reference :user_consumers, :rental_company, null: false, foreign_key: true
    add_reference :customers, :rental_company, null: false, foreign_key: true
  end
end
