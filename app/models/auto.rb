class Auto < ApplicationRecord
  belongs_to :rental_company
  belongs_to :category

  validates :name, presence: true, 
                   :uniqueness => {:case_sensitive => false},
                   length: { minimum: 3, maximum: 60 }
end
