class CreateCustomerAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_addresses do |t|
      t.string :country, null: false, limit: 50
      t.string :uf, null: false, limit: 50
      t.string :city, null: false, limit: 50
      t.string :district, null: false, limit: 50
      t.string :complement, null: true, limit: 50
      t.integer :number, null: false, limit: 6
      t.string :street, null: false, limit: 50
      t.string :cep, null: false, lenght: { is: 8 }
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
