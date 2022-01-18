class CreateRentalCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :rental_companies do |t|
      t.string :avatar
      t.string :corporate_name
      t.string :fantasy_name
      t.string :email
      t.string :cnpj
      t.string :phone
      t.string :cel_phone

      t.timestamps
    end
  end
end
