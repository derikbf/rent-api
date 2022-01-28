class AutoYear < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company

  validates :year, presence: true, 
                   :uniqueness => {:case_sensitive => false},
                   length: { is: 4 }
end
