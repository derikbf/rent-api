require 'rails_helper'

RSpec.describe AutoFuel, type: :model do
  subject(:auto_fuel) { build :auto_fuel }

  describe 'enum' do
    it { is_expected.to define_enum_for(:fuel).with_values({ 
      gasolina: 0, etanol: 1, gas: 2, diesel: 3 }) }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
