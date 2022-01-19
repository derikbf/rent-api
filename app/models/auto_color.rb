class AutoColor < ApplicationRecord
  belongs_to :rental_company

  validates :name, presence: true, 
                   :uniqueness => {:case_sensitive => false},
                   length: { minimum: 2, maximum: 60 }
end
