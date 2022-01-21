class AutoDoor < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company

  enum door: { duasportas: 0, quatroportas: 1 }
end
