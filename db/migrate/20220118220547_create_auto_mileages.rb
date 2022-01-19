class CreateAutoMileages < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_mileages do |t|
      t.integer :mileage
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
