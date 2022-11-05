# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a main sample user.

# Car.create(
#   model: "Aston Martin V12 Zagato",
#   brand: "Aston Martin",
#   specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
#   featured_image: 'https://www.kindpng.com/picc/m/35-354780_aston-martin-v12-zagato-red-sports-car-png.png',
#   year_released: '2021-10-28'
# )

Car.create(
  model: "Yellow Ferrari",
  brand: "Ferrari",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/20-201550_yellow-ferrari-front-view-car-png-image-pngpix.png',
  year_released: '2021-10-28',
)

Car.create(
  model: "Lamborghini Aventador",
  brand: "Lamborghini",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/20-201550_yellow-ferrari-front-view-car-png-image-pngpix.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "Bmw 7 Sedan 2013",
  brand: "Bmw",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/37-376655_black-sapphire-metallic-bmw-7-sedan-2013-car.png',
  year_released: '2013-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "Bmw X5 SUV 2014",
  brand: "Bmw",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/609-6094078_mahindra-new-car-7-seater-hd-png-download.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "Mercedes Benz Gls Class",
  brand: "Mercedes Benz",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/482-4828965_mercedes-benz-gls-class-red-car-png-image.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "2020 Mercedes G Wagon",
  brand: "Mercedes Benz",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/504-5047623_new-2020-mercedes-benz-g-class-amg-g.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "White Acura Sports 2020",
  brand: "Acura",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/186-1866022_transparent-honda-png-white-acura-sports-car-png.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "Audi R8",
  brand: "Audi",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/186-1866052_transparent-red-jeep-clipart-audi-r8-car-png.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "Lexus RX 2019 Jeep",
  brand: "Lexus",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/19-197009_lexus-2019-jeep-hd-png-download.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "2019 Lexus Ux 250h",
  brand: "Lexus",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/19-196817_2019-lexus-ux-250h-hd-png-download.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "2019 Lexus Suv Models",
  brand: "Lexus",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/196-1965010_2019-lexus-suv-models-hd-png-download.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000',
)

Car.create(
  model: "Jaguar F Type",
  brand: "Jaguar",
  specifications: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil, quidem?',
  featured_image: 'https://www.kindpng.com/picc/m/486-4861855_jaguar-car-f-type-blue-hd-png-download.png',
  year_released: '2021-10-28 17:25:39.000000000 +0000'
)


# 1..5.times do |i|
#   Reservation.create(
#     user_id: 1,
#     city: "City #{i}",
#     car_id: i + 1,
#     reservation_date: '2022-12-28',
#   )
# end

