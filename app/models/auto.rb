class Auto < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company
  belongs_to :category

  validates :name, presence: true, 
                   :uniqueness => {:case_sensitive => false},
                   length: { minimum: 3, maximum: 60 }

  validates :unit_price, presence: true
end
