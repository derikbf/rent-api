class AutoExchange < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company

  enum exchange: { manual: 0, automatico: 1 }

end
