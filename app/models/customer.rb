class Customer < ApplicationRecord

  validates :corporate_name, :fantasy_name, :email, :cnpj, presence: true
  validates :email, :cnpj, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
