require 'rails_helper'

RSpec.describe SaleItem, type: :model do
  describe 'validations' do
    it 'validate presence of required fields' do
      should validate_presence_of(:quantity)
      should validate_presence_of(:buyer)
      should validate_presence_of(:sale)
      should validate_presence_of(:product)
      should validate_presence_of(:seller)
    end
  end
end
