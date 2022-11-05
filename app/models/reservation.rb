class Reservation < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :car, optional: true

  validates :city, :reservation_date, presence: true
  validates :car_id, uniqueness: { scope: :reservation_date }
end
