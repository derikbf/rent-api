class AddReferenceCategoryAuto < ActiveRecord::Migration[6.1]
  def change
    add_reference :autos, :category, null: true, foreign_key: true
  end
end
