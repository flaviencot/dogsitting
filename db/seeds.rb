# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

5.times do 
  cities = City.create!(city_name: Faker::Address.city)
end

100.times do
  dogs = Dog.create!(name: Faker::Creature::Dog.name, city_id: Faker::Number.between(from: 1, to: 5))
end

100.times do
  dogsitters = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(from: 1, to: 5))
end

300.times do
  strolls = Stroll.create!(dogsitter_id: Faker::Number.between(from: 1, to: 100),dog_id: Faker::Number.between(from: 1, to: 100))
end
