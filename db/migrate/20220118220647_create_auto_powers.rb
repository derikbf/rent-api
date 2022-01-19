class CreateAutoPowers < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_powers do |t|
      t.decimal :power
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
