require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:rating) { build :rating }

  describe 'enum' do
    it { is_expected.to define_enum_for(:star).with_values({ "1 Estrela": 0, "2 Estrelas": 1,
      "3 Estrelas": 2, "4 Estrelas": 3, "5 Estrelas": 4   
    }) }
  end
  
  describe 'relationships' do
    it { is_expected.to belong_to(:booking) } 
  end
end
