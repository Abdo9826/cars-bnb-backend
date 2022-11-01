# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 1..10.times do |i|
#   Car.create(
#     model: "E200 #{i}",
#     brand: "Mercedes #{i}",
#     featured_image: 'https://www.kindpng.com/picc/m/185-1854021_yellow-mercedes-amg-gt-solarbeam-car-png-image.png',
#     year_released: '2021-10-28 17:25:39.000000000 +0000',
#   )
# end

1..5.times do |i|
  Reservation.create(
    user_id: 9,
    city: "City #{i}",
    car_id: i + 31,
    reservation_date: '2021-10-28 17:25:39.000000000 +0000',
  )
end

