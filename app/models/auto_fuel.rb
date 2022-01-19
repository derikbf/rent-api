class AutoFuel < ApplicationRecord
  belongs_to :rental_company

  enum status: { gasolina: 0, etanol: 1, gas: 2, diesel: 3 }
end
