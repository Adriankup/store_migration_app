require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validations' do
    it 'validate presence of required fields' do
      should validate_presence_of(:description)
      should validate_presence_of(:price)
    end

    it 'validate relations' do
      should have_many(:sale_items)
    end
  end
end
