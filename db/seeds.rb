require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Flat.create!(
    name: Faker::FunnyName.name_with_initial,
    address: Faker::Address.street_name,
    description: Faker::Company.catch_phrase,
    price_per_night: rand(1..300),
    number_of_guests: rand(1..10)
  )
end

# t.string "name"
# t.string "address"
# t.text "description"
# t.integer "price_per_night"
# t.integer "number_of_guests"
