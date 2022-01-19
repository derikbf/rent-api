class AutoDirection < ApplicationRecord
  belongs_to :rental_company

  enum status: { manual: 0, hidraulica: 1 }
end
