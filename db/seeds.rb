# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Story.destroy_all
puts "deleted stories"

print "Creating 5 stories"

5.times do
    name = Faker::Games::SuperSmashBros.fighter
    object = Faker::Games::Minecraft.item
    title = "#{name} and the #{object}"
    Story.create(title: title,theme:"fantasy",age: rand(5..10),name: name,fav_object: object, content: Faker::Lorem.sentences  ,user:User.find(1))
end
puts "DONE"
