class AutoExchange < ApplicationRecord
  belongs_to :rental_company

  enum status: { manual: 0, automatico: 1 }

end
