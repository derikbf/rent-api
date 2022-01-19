class CreateAutoFuels < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_fuels do |t|
      t.string :fuel
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end