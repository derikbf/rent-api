class CreateAutoDirections < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_directions do |t|
      t.integer :direction, default: 0, null: false
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
