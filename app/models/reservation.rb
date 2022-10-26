class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :city, :reservation_date, :car_id, :user_id, presence: true
  # validates :car_id, uniqueness: { scope: :user_id }
end
