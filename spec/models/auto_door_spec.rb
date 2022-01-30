require 'rails_helper'

RSpec.describe AutoDoor, type: :model do
  subject(:auto_door) { build :auto_door }

  describe 'enum' do
    it { is_expected.to define_enum_for(:door).with_values({ 
      duasportas: 0, quatroportas: 1 }) }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
