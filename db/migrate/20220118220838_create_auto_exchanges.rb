class CreateAutoExchanges < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_exchanges do |t|
      t.integer :exchange, default: 0, null: false
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
