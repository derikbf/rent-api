class CreateAutoExchanges < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_exchanges do |t|
      t.integer :exchange
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
