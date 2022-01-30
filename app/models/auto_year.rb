class AutoYear < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company

  validates :year, presence: true, uniqueness: true, length: { is: 4 }
end
