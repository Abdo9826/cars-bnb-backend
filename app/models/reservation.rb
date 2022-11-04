class Reservation < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :car, optional: true

  validates :city, :reservation_date, :car_id, :user_id, presence: true
  validates :car_id, uniqueness: true
end
