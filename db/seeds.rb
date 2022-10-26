# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


1..10.times do |i|
  Car.create(
    model: "Model #{i}",
    brand: "Brand #{i}",
    year: 2000 + i,
    user_id: 1
  )
end

1..10.times do |i|
  Reservation.create(
    user_id: 1,
    user_name: "User #{i}",
    city: "City #{i}",
    car_id: i,
    reservation_date: Date.today + i
  )
end