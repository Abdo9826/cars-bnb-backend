require 'rails_helper'

RSpec.describe User, type: :model do
  # test validations
  describe 'validations' do
    it 'it validates the presence of a name' do
      user = User.new(name: nil)
      expect(user).to_not be_valid
    end

    it 'it validates the presence of an email' do
      user = User.new(email: nil)
      expect(user).to_not be_valid
    end

    it 'it validates the presence of a password' do
      user = User.new(password: nil)
      expect(user).to_not be_valid
    end
  end

  # test associations
  describe 'associations' do
    it 'it has many cars' do
      user = User.reflect_on_association(:cars)
      expect(user.macro).to eq(:has_many)
    end

    it 'it has many reservations' do
      user = User.reflect_on_association(:reservations)
      expect(user.macro).to eq(:has_many)
    end
  end
end
