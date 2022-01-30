require 'rails_helper'

RSpec.describe AutoPower, type: :model do
  subject(:auto_power) { build :auto_power }

  # describe 'validations' do
  #   it { is_expected.to validate_numericality_of(:power) }
  # end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
