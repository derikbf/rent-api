class AutoDirection < ApplicationRecord
  belongs_to :rental_company

  enum direction: { manual: 0, hidraulica: 1 }
end
