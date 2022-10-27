require 'rails_helper'

RSpec.describe Reservation, type: :model do
  # test validations
  describe 'validations' do
    it 'it validates the presence of a car' do
      reservation = Reservation.new(car: nil)
      expect(reservation).to_not be_valid
    end

    it 'it validates the presence of a user' do
      reservation = Reservation.new(user: nil)
      expect(reservation).to_not be_valid
    end
  end

  # test associations
  describe 'associations' do
    it 'it belongs to a car' do
      reservation = Reservation.reflect_on_association(:car)
      expect(reservation.macro).to eq(:belongs_to)
    end

    it 'it belongs to a user' do
      reservation = Reservation.reflect_on_association(:user)
      expect(reservation.macro).to eq(:belongs_to)
    end
  end
end
