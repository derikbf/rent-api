class CreateAutos < ActiveRecord::Migration[6.1]
  def change
    create_table :autos do |t|
      t.string :name, null: false, limit: 60
      t.string :description, limit: 120
      t.string :image_1_path
      t.decimal :unit_price, precision: 9, scale: 2
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
