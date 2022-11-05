class Car < ApplicationRecord
  has_many :reservation, foreign_key: :car_id, dependent: :destroy

  validates :model, :brand, :year_released, :featured_image, presence: true
end
