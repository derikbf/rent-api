class CreateAutoOptionals < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_optionals do |t|
      t.boolean :eletric_glass
      t.boolean :air_bag
      t.boolean :eletrick_lock
      t.boolean :air_conditioner
      t.boolean :alarm
      t.boolean :sound
      t.boolean :on_board_computer
      t.boolean :abs_brakes
      t.boolean :reverse_sensor
      t.boolean :reverse_camera
      t.references :rental_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
