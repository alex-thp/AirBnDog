# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  city = City.create!(name: Faker::StarWars.planet)
end


10.times do
  dog = Dog.create!(name: Faker::StarWars.character, city_id: Faker::Number.between(1, 5))
end

10.times do
  dogsitter = Dogsitter.create!(first_name: Faker::DragonBall.character, last_name: Faker::DragonBall.character, city_id: Faker::Number.between(1, 5))
end

20.times do
  stroll = Stroll.create!(dog_id: Faker::Number.between(1, 10), dogsitter_id: Faker::Number.between(1, 10))
end


