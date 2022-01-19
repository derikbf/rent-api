class CreateAutoColors < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_colors do |t|
      t.string :name
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
