require 'rails_helper'

RSpec.describe Booking, type: :model do
  subject(:booking) { build :booking }

  describe 'validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
  end
  
  describe 'enum' do
    it { is_expected.to define_enum_for(:status).with_values({ 
      progress: 0, done: 1, cancelled: 2 }) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:auto) } 
    it { is_expected.to belong_to(:customer).optional } 
    it { is_expected.to belong_to(:user).optional } 
  end
end
