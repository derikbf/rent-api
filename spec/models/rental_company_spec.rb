require 'rails_helper'

RSpec.describe RentalCompany, type: :model do
  subject(:rental_company) { build :rental_company }

  describe "validations" do
    # it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    # it { is_expected.to validate_uniqueness_of(:corporate_name).case_insensitive }
    # it { is_expected.to validate_uniqueness_of(:cnpj).case_insensitive }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:corporate_name) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:fantasy_name) }
    it { is_expected.to validate_presence_of(:cnpj) }

    it { is_expected.to validate_length_of(:corporate_name).is_at_least(3).is_at_most(60) }
    it { is_expected.to validate_length_of(:fantasy_name).is_at_least(3).is_at_most(60) }
    it { is_expected.to validate_length_of(:email).is_at_least(3).is_at_most(50) }

    it { is_expected.to validate_numericality_of(:phone) }
    it { is_expected.to validate_length_of(:phone).is_at_least(11).is_at_most(15) }

    it { is_expected.to validate_length_of(:cnpj).is_equal_to(14) }
  end
    
  describe "relationships" do
    it { is_expected.to have_many(:categories) }
    it { is_expected.to have_many(:customers) }
    it { is_expected.to have_many(:users) }
    it { is_expected.to have_many(:user_operators) }
    it { is_expected.to have_many(:autos)}
    it { is_expected.to have_many(:auto_brands)}
    it { is_expected.to have_many(:auto_models)}
    it { is_expected.to have_many(:auto_colors)}
    it { is_expected.to have_many(:auto_directions)}
    it { is_expected.to have_many(:auto_doors)}
    it { is_expected.to have_many(:auto_exchanges)}
    it { is_expected.to have_many(:auto_fuels)}
    it { is_expected.to have_many(:auto_mileages)}
    it { is_expected.to have_many(:auto_plates)}
    it { is_expected.to have_many(:auto_powers)}
    it { is_expected.to have_many(:auto_types)}
    it { is_expected.to have_many(:auto_years)}
    it { is_expected.to have_many(:auto_optionals)}
  end
end