class AddTableCategory < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, limit: 60
      t.string :description, null: false, limit: 120
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
