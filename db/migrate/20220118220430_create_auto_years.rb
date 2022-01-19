class CreateAutoYears < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_years do |t|
      t.integer :year
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
