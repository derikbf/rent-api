class CreateUserConsumers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_consumers do |t|
      t.string :avatar
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :cpf
      t.string :phone

      t.timestamps
    end
  end
end
