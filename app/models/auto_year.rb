class AutoYear < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company
end
