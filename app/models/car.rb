class Car < ApplicationRecord
  has_many :reservation, foreign_key: :car_id

  validates :model, :brand, :year_released, :featured_image, presence: true
end
