require 'rails_helper'

RSpec.describe AutoYear, type: :model do
  subject(:auto_year) { build :auto_year }

  describe 'validations' do
    it { should validate_presence_of(:year) }
    it { is_expected.to validate_length_of(:year).is_equal_to(4) }  
    # it { is_expected.to validate_numericality_of(:year) }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end

