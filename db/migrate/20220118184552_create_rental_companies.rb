class CreateRentalCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :rental_companies do |t|
      t.string :avatar
      t.string :corporate_name, null: false, limit: 60
      t.string :fantasy_name, null: false, limit: 60
      t.string :email, null: false, limit: 50
      t.string :cnpj, null: false, lenght: { is: 14 }
      t.string :phone, null: false, limit: 15
      t.string :cel_phone, null: false, limit: 15

      t.timestamps
    end
  end
end
