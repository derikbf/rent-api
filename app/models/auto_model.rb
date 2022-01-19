class AutoModel < ApplicationRecord
  belongs_to :rental_company

  validates :name, presence: true, uniqueness: :true

  validates :name, length: { minimum: 3, maximum: 70 }
end
