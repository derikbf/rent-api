class CreateCustomerAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_addresses do |t|
      t.string :country
      t.string :uf
      t.string :city
      t.string :district
      t.string :complement
      t.string :number
      t.string :street
      t.string :cep
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
