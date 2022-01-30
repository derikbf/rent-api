require 'rails_helper'

RSpec.describe AutoMileage, type: :model do
  subject(:auto_mileage) { build :auto_mileage }

  describe 'validations' do
    it { should validate_presence_of(:mileage) }
    # it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_length_of(:mileage).is_at_least(2).is_at_most(60) }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end