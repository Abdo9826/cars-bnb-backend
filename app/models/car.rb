class Car < ApplicationRecord
  belongs_to :user
  has_one :reservation, dependent: :destroy

  validates :model, :brand, :year, :user_id, presence: true
end
