class AddTableCategory < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.references :auto, null: false, foreign_key: true
    end
  end
end
