class AutoExchange < ApplicationRecord
  belongs_to :rental_company

  enum exchange: { manual: 0, automatico: 1 }

end
