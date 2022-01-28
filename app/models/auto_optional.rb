class AutoOptional < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company

  # enum eletric_glass: { true: 0, false: 1 }
  # enum air_bag: { true: 0, false: 1 }
  # enum eletrick_lock: { true: 0, false: 1 }
  # enum air_conditioner: { true: 0, false: 1 }
  # enum alarm: { true: 0, false: 1 }
  # enum sound: { true: 0, false: 1 }
  # enum on_board_computer: { true: 0, false: 1 }
  # enum abs_brakes: { true: 0, false: 1 }
  # enum reverse_sensor: { true: 0, false: 1 }
  # enum reverse_camera: { true: 0, false: 1 }
end
