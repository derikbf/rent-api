class AddReferenceCategoryToAutoBrand < ActiveRecord::Migration[6.1]
  def change
    add_reference :autos, :auto_brand, null: true, foreign_key: true
  end
end
