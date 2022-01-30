require 'rails_helper'

RSpec.describe UserOperator, type: :model do
  subject(:user_operator) { build :user_operator }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_presence_of(:phone) }

    # >> VERIFICAR <<
    # it { is_expected.to validate_uniqueness_of(:username) }
    # it { is_expected.to validate_uniqueness_of(:email) }
    # it { is_expected.to validate_uniqueness_of(:cpf) }
    # it { is_expected.to validate_uniqueness_of(:phone) }

    it { is_expected.to validate_length_of(:name).is_at_least(3).is_at_most(60) }
    it { is_expected.to validate_length_of(:username).is_at_least(3).is_at_most(60) }
    it { is_expected.to validate_length_of(:email).is_at_least(3).is_at_most(50) }
    
    it { is_expected.to validate_numericality_of(:phone) }
    it { is_expected.to validate_length_of(:phone).is_at_least(11).is_at_most(15) }
    
    it { is_expected.to validate_numericality_of(:cpf) }
    it { is_expected.to validate_length_of(:cpf).is_equal_to(11) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:rental_company) } 
  end
end
