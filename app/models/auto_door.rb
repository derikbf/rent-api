class AutoDoor < ApplicationRecord
  belongs_to :rental_company

  enum status: { duasportas: 0, quatroportas: 1 }
end
