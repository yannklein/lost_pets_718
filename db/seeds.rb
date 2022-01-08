# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Removing all pets"
Pet.destroy_all

puts "Adding 10 new pets"
10.times do
  Pet.create(
    name: Faker::Games::WarhammerFantasy.hero,
    species: %w[dog cat rabbit snake].sample,
    color: Faker::Color.color_name,
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today),
    address: Faker::Address.street_address
  )
end
puts "Seeds done!"