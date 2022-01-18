class CreateAutos < ActiveRecord::Migration[6.1]
  def change
    create_table :autos do |t|
      t.string :name
      t.string :description
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
