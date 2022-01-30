require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:category) { build :category }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    # it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_length_of(:name).is_at_least(3).is_at_most(40) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
