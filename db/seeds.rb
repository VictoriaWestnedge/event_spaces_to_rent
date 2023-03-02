# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

file1 = URI.open("https://weddingsbythebreakers.com/wp-content/uploads/2017/12/001.jpg")
file2 = URI.open("https://cdn.pixabay.com/photo/2014/09/13/04/59/couple-443600__340.jpg")

  puts "Creating User"
  user_1 = User.create!(email:"fernando@gmail.com", password:"123456")
  user_2 = User.create!(email:"santiago@gmail.com", password:"987654")
  user_3 = User.create!(email:"victoria@gmail.com", password:"123456")

  puts "Creating Event Space"
  event_space_1 = EventSpace.new(name:"events room traji", adress:"Av. Américo Vespucio 399, 9250000 Maipú", description:"beautiful room for wedding", price_per_hour:5, min_hour:3, user:user_1, city:"Santiago de Chile")
  event_space_1.photo.attach(io: file1, filename: "nes.jpg", content_type: "image/jpg")
  event_space_1.save
  event_space_2 = EventSpace.new(name:"events room numar", adress:"Av. El Parrón 999, La Cisterna, Región Metropolitana", description:"house", price_per_hour:7, min_hour:4, user:user_2, city:"Santiago de Chile")
  event_space_2.photo.attach(io: file2, filename: "nes2.jpg", content_type: "image/jpg")
  event_space_2.save

  puts "Creating Booking"
  Booking.create!(user:user_2, event_space:event_space_2, start_date:"04-april-2023", end_date:"5-april-2023", qty_hour:24, total_cost:500)
  Booking.create!(user:user_2, event_space:event_space_1, start_date:"02-june-2023", end_date:"02-june-2023", qty_hour:5, total_cost:50)

  puts "Everything right"
