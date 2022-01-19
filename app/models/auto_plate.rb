class AutoPlate < ApplicationRecord
  belongs_to :rental_company

  validates :name, :uniqueness => {:case_sensitive => false}
  validates :name, presence: true 
  
  validates :name, length: { is: 7 }
end
