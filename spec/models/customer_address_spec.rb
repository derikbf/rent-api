require 'rails_helper'

RSpec.describe CustomerAddress, type: :model do 
  describe "validations" do
    it { is_expected.to validate_presence_of(:number) }
    it { is_expected.to validate_presence_of(:street) }
    it { is_expected.to validate_presence_of(:country) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:district) }
    it { is_expected.to validate_presence_of(:uf) }
    it { is_expected.to validate_presence_of(:cep) }

    it { is_expected.to validate_length_of(:street).is_at_least(2).is_at_most(50) }
    it { is_expected.to validate_length_of(:country).is_at_least(3).is_at_most(50) }
    it { is_expected.to validate_length_of(:city).is_at_least(3).is_at_most(50) }
    it { is_expected.to validate_length_of(:district).is_at_least(3).is_at_most(50) }
    it { is_expected.to validate_length_of(:uf).is_at_least(2).is_at_most(50) }
    # it { is_expected.to validate_length_of(:cep).is_equal_to(8) } 
  end

  # >> VERIFICAR <<
  # it { is_expected.to validate_length_of(:number).is_at_least(1).is_at_most(6) }
  
  describe "relationships" do
    it { is_expected.to belong_to(:customer) }
  end
end
