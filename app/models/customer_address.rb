class CustomerAddress < ApplicationRecord
  belongs_to :customer
  
  validates :number, :street, :country, :city, :district, :uf, :cep, presence: true 
  validates :customer_id, uniqueness: :true

  validates :country, length: { minimum: 3, maximum: 50 }
  validates :uf, length: { minimum: 2, maximum: 50 }
  validates :city, length: { minimum: 3, maximum: 50 }
  validates :district, length: { minimum: 3, maximum: 50 }
  validates :number, length: { minimum: 1, maximum: 20 }
  validates :street, length: { minimum: 3, maximum: 50 }
  validates :cep, length: { minimum: 8, maximum: 8 }
end
