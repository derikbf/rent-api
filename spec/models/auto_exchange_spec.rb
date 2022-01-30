require 'rails_helper'

RSpec.describe AutoExchange, type: :model do
  subject(:auto_exchange) { build :auto_exchange }

  describe 'enum' do
    it { is_expected.to define_enum_for(:exchange).with_values({ 
      manual: 0, automatico: 1 }) }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
