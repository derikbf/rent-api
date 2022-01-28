class AutoPlate < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company

  validates :name, presence: true, 
                   :uniqueness => {:case_sensitive => false},
                   length: {  is: 7 }
end
