require 'rails_helper'

RSpec.describe AutoOptional, type: :model do
  subject(:auto_optional) { build :auto_optional }

  # describe 'validations' do
  #   it { should validate_presence_of(:name) }
  #   it { is_expected.to validate_length_of(:name).is_at_least(2).is_at_most(60) }
  # end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
