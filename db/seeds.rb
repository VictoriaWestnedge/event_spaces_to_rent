# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
  puts "Creating User"
  user_1 = User.create!(email:"fernando@gmail.com", password:"123456")
  user_2 = User.create!(email:"santiago@gmail.com", password:"987654")

  puts "Creating Event Space"
  event_space_1 = EventSpace.create!(name:"events room traji", adress:"santiago de chile", description:"beautiful room for wedding", price_per_hour:5, min_hour:3, user:user_1, city:"Santiago de Chile")
  event_space_2 = EventSpace.create!(name:"events room numar", adress:"rubie des", description:"house", price_per_hour:7, min_hour:4, user:user_2, city:"Iquique")

  puts "Creating Booking"
  Booking.create!(user:user_2, event_space:event_space_2, start_date:"04-april-2023", end_date:"5-april-2023", qty_hour:24, total_cost:500)
  Booking.create!(user:user_2, event_space:event_space_1, start_date:"02-june-2023", end_date:"02-june-2023", qty_hour:5, total_cost:50)

  puts "Everything right"
