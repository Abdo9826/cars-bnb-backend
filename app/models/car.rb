class Car < ApplicationRecord
  has_one :reservation, dependent: :destroy

  validates :model, :brand, :year_released, :featured_image, presence: true
end
