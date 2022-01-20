class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :status
      t.decimal :total, precision: 9, scale: 2
      t.decimal :subtotal, precision: 9, scale: 2
      t.decimal :perc_discount, precision: 9, scale: 2
      t.decimal :discount, precision: 9, scale: 2
      t.references :auto, null: false, foreign_key: true
      t.references :customer, null: true, foreign_key: true
      t.references :user_consumer, null: true, foreign_key: true

      t.timestamps
    end
  end
end
