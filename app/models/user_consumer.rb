class UserConsumer < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :rental_company

  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
