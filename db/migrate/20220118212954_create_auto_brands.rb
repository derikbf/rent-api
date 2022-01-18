class CreateAutoBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_brands do |t|
      t.string :name
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
