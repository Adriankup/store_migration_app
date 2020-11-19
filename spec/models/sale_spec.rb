require 'rails_helper'

RSpec.describe Sale, type: :model do
  describe 'validations' do
    it 'validate presence of required fields' do
      should validate_presence_of(:amount)
    end

    it 'validate relations' do
      should have_many(:sale_items)
    end
  end
end
