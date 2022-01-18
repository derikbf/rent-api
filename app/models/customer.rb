class Customer < ApplicationRecord

  has_one :customer_address, dependent: :destroy 

  accepts_nested_attributes_for :customer_address, allow_destroy: true 

  validates :email, :corporate_name, :uniqueness => {:case_sensitive => false}
  validates :cnpj, uniqueness: :true  

  validates :email, :corporate_name, :phone, :fantasy_name, :cnpj, presence: true 
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  
  validates :corporate_name, length: { minimum: 3, maximum: 60 }
  validates :fantasy_name, length: { minimum: 3, maximum: 60 }
  validates :email, length: { minimum: 3, maximum: 50 }
  validates :phone, length: { minimum: 11, maximum: 15 }, numericality: { only_integer: true }
  validates :cnpj, length: { is: 14 }, numericality: { only_integer: true }
end
