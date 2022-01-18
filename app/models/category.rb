class Category < ApplicationRecord
  belongs_to :rental_company
  
  validates :name, presence: true, 
                   :uniqueness => {:case_sensitive => false},
                   length: { minimum: 3, maximum: 40 }
end
