class CreateAutoDoors < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_doors do |t|
      t.integer :door, default: 0, null: false
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
