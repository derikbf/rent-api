class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :avatar
      t.string :corporate_name
      t.string :fantasy_name
      t.string :email
      t.string :cnpj
      t.integer :phone
      t.integer :cel_phone

      t.timestamps
    end
  end
end
