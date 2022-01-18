class Category < ApplicationRecord
  belongs_to :auto

  validates :name, presence: true, 
                   :uniqueness => {:case_sensitive => false},
                   length: { minimum: 3, maximum: 40 }
end
