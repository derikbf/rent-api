class RentalCompany < ApplicationRecord
  acts_as_paranoid
  
  has_many :categories, dependent: :destroy
  has_many :customers, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :user_operators, dependent: :destroy

  has_many :autos, dependent: :destroy
  has_many :auto_brands, dependent: :destroy
  has_many :auto_models, dependent: :destroy
  has_many :auto_colors, dependent: :destroy
  has_many :auto_directions, dependent: :destroy
  has_many :auto_doors, dependent: :destroy
  has_many :auto_exchanges, dependent: :destroy
  has_many :auto_fuels, dependent: :destroy
  has_many :auto_mileages, dependent: :destroy
  has_many :auto_plates, dependent: :destroy
  has_many :auto_powers, dependent: :destroy
  has_many :auto_types, dependent: :destroy
  has_many :auto_years, dependent: :destroy
  has_many :auto_optionals, dependent: :destroy
  
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
