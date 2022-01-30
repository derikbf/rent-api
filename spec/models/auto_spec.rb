require 'rails_helper'

RSpec.describe Auto, type: :model do
  subject(:auto) { build :auto }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    # it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_length_of(:name).is_at_least(3).is_at_most(60) }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
    it { is_expected.to belong_to(:category) } 
  end
end
