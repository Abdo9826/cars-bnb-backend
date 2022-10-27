require 'rails_helper'

RSpec.describe Car, type: :model do
  # test validations

  describe 'validations' do
    it 'it validates the presence of a user' do
      car = Car.new(user: nil)
      expect(car).to_not be_valid
    end
  end

  # test associations

  describe 'associations' do
    it 'it belongs to a user' do
      car = Car.reflect_on_association(:user)
      expect(car.macro).to eq(:belongs_to)
    end
  end
end
