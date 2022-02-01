require 'rails_helper'

RSpec.describe AutoPlate, type: :model do
  subject(:auto_plate) { build :auto_plate }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    # it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
