class AutoMileage < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company

  validates :mileage, presence: true, 
                   :uniqueness => {:case_sensitive => false},
                   length: { minimum: 2, maximum: 60 }
end
