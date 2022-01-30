require 'rails_helper'

RSpec.describe AutoDoor, type: :model do
  subject(:auto_direction) { build :auto_direction }

  describe 'enum' do
    it { is_expected.to define_enum_for(:direction).with_values({ 
      manual: 0, hidraulica: 1 }) }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
