require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:category) { build :category }

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
