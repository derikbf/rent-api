class User < ApplicationRecord
  acts_as_token_authenticatable
  acts_as_paranoid
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable,  and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable,
         :trackable,
         :confirmable
  
  belongs_to :rental_company

  validates :name, presence: true
  validates :email, :username, :cpf, :phone, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  
  validates :name, :username, length: { minimum: 3, maximum: 60 }
  validates :email, length: { minimum: 3, maximum: 50 }
  validates :phone, length: { minimum: 11, maximum: 15 }, numericality: { only_integer: true }
  validates :cpf, length: { is: 11 }, numericality: { only_integer: true }
end


