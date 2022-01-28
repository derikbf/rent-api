class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_operators do |t|
      t.string :avatar
      t.string :name, null: false, limit: 60
      t.string :username, null: false, limit: 60
      t.string :email, null: false, limit: 50
      t.string :password_digest
      t.string :cpf, null: false, lenght: { is: 11 }
      t.string :phone, null: false, limit: 15

      t.timestamps
    end
  end
end
