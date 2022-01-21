class AddDeletedAtToAuto < ActiveRecord::Migration[6.1]
  def change
    add_column :autos, :deleted_at, :datetime
    add_index :autos, :deleted_at

    add_column :auto_brands, :deleted_at, :datetime
    add_index :auto_brands, :deleted_at

    add_column :auto_colors, :deleted_at, :datetime
    add_index :auto_colors, :deleted_at

    add_column :auto_directions, :deleted_at, :datetime
    add_index :auto_directions, :deleted_at

    add_column :auto_doors, :deleted_at, :datetime
    add_index :auto_doors, :deleted_at

    add_column :auto_exchanges, :deleted_at, :datetime
    add_index :auto_exchanges, :deleted_at

    add_column :auto_fuels, :deleted_at, :datetime
    add_index :auto_fuels, :deleted_at

    add_column :auto_mileages, :deleted_at, :datetime
    add_index :auto_mileages, :deleted_at

    add_column :auto_models, :deleted_at, :datetime
    add_index :auto_models, :deleted_at

    add_column :auto_plates, :deleted_at, :datetime
    add_index :auto_plates, :deleted_at

    add_column :auto_powers, :deleted_at, :datetime
    add_index :auto_powers, :deleted_at

    add_column :auto_types, :deleted_at, :datetime
    add_index :auto_types, :deleted_at

    add_column :auto_optionals, :deleted_at, :datetime
    add_index :auto_optionals, :deleted_at

    add_column :auto_years, :deleted_at, :datetime
    add_index :auto_years, :deleted_at

    add_column :bookings, :deleted_at, :datetime
    add_index :bookings, :deleted_at

    add_column :categories, :deleted_at, :datetime
    add_index :categories, :deleted_at

    add_column :customer_addresses, :deleted_at, :datetime
    add_index :customer_addresses, :deleted_at

    add_column :customers, :deleted_at, :datetime
    add_index :customers, :deleted_at

    add_column :ratings, :deleted_at, :datetime
    add_index :ratings, :deleted_at

    add_column :rental_companies, :deleted_at, :datetime
    add_index :rental_companies, :deleted_at

    add_column :user_consumers, :deleted_at, :datetime
    add_index :user_consumers, :deleted_at
    
    add_column :user_operators, :deleted_at, :datetime
    add_index :user_operators, :deleted_at
  end
  
end
