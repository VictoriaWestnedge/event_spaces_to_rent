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
  user_1 = User.create!(email:"fernando@gmail.com", password:"123456", nickname:"Fer", avatar:"https://avatars.githubusercontent.com/u/108149366?v=4")
  user_2 = User.create!(email:"nica@gmail.com", password:"123456", nickname: "Nica", avatar:"https://avatars.githubusercontent.com/u/122623098?v=4")
  user_3 = User.create!(email:"victoria@gmail.com", password:"123456", nickname: "Vicky", avatar:"https://avatars.githubusercontent.com/u/122117282?v=4")

  puts "Creating Event Space"
  event_space_1 = EventSpace.new(name:"events room traji", adress:"Av. Américo Vespucio 399, 9250000 Maipú", description:"Beautiful Room for Wedding", price_per_hour:1000, min_hour:3, user:user_2, city:"Santiago de Chile")
  event_space_1.photo.attach(io: file1, filename: "nes.jpg", content_type: "image/jpg")
  event_space_1.save
  event_space_2 = EventSpace.new(name:"events room numar", adress:"Av. El Parrón 999, La Cisterna, Región Metropolitana", description:"house", price_per_hour:1500, min_hour:4, user:user_2, city:"Santiago de Chile")
  event_space_2.photo.attach(io: file2, filename: "nes2.jpg", content_type: "image/jpg")
  event_space_2.save
  event_space_3 = EventSpace.create!(name:"La Bella Casa", adress:"San Nicolás 1299, San Miguel, Región Metropolitana", description:"Beautiful event room for weddings, birthdays and corporate events ", price_per_hour:1700, min_hour:5, user:user_3, city:"Santiago de Chile", image_url:"https://cdn0.bodas.com.mx/vendor/5545/3_2/960/jpg/ghfdsfg_5_125545.jpeg")

  event_space_4 = EventSpace.create!(name:"Sala Condell", adress:"Condell 1674, 7770209 Ñuñoa, Región Metropolitana", description:"An elegant ballroom for weddings and special events, featuring crystal chandeliers and stunning views of the city skyline.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_2, city:"Santiago de Chile", image_url:"https://www.fourseasons.com/content/dam/fourseasons/images/web/ORL/ORL_427_aspect16x9.jpg/jcr:content/renditions/cq5dam.web.720.405.jpeg")

  event_space_5 = EventSpace.create!(name:"Zacata Eventos", adress:"Av. Camilo Henríquez 4617, La Florida, Puente Alto, Región Metropolitana", description:"A rustic barn venue perfect for outdoor weddings and rustic-themed events, complete with a scenic pond and rolling hills.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_3, city:"Santiago de Chile", image_url:"https://img.freepik.com/fotos-premium/lujoso-salon-convenciones-eventos-mobiliario-planificado-disenado-hogares-hoteles_7023-835.jpg")

  event_space_6 = EventSpace.create!(name:"De Gala Eventos", adress:"Av. Departamental 1219, San Miguel, Región Metropolitana", description:"A modern event space with state-of-the-art lighting and sound, perfect for corporate meetings and conferences.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_2, city:"Santiago de Chile", image_url:"https://www.managementjournal.net/images/joomlart/article/20beb8eb70cf4ec9846be0c202b12bab.jpg")

  event_space_7 = EventSpace.create!(name:"Peques Casa Eventos", adress:"1535, Av. Héroes de la Concepción, Iquique, Tarapacá", description:"A spacious banquet hall with an open floor plan and sleek decor, ideal for large weddings and receptions.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_3, city:"Iquique", image_url:"https://www.fourseasons.com/content/dam/fourseasons/images/web/ORL/ORL_500_aspect16x9.jpg/jcr:content/renditions/cq5dam.web.720.405.jpeg")

  event_space_8 = EventSpace.create!(name:"Salon de eventos Paraiso", adress:"Vía Uno 1-15, Alto Hospicio, Tarapacá", description:"A cozy and intimate venue with vintage-inspired furnishings and an outdoor patio, perfect for smaller events like baby showers and birthdays.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_2, city:"Iquique", image_url:"https://passeraevents.com/wp-content/uploads/2020/07/Passera_Luxury_Events_baby_shower-1200x800.jpg")

  event_space_9 = EventSpace.create!(name:"Sala de Eventos Espacio OX", adress:"Playa La Gaviota 2225, Iquique, Tarapacá", description:"A grand event hall with a stage and dance floor, perfect for live entertainment and large corporate events.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_3, city:"Iquique", image_url:"https://alwaince.com/wp-content/uploads/2021/05/corporate-events.jpg")

  event_space_10 = EventSpace.create!(name:"Casa de Eventos Musaraña", adress:"Pedro Gamboni 2853, Iquique, Tarapacá", description:"A charming garden venue with lush greenery and blooming flowers, ideal for outdoor weddings and garden parties.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_3, city:"Iquique", image_url:"https://www.awesomeeventsph.co/uploads/1/2/6/2/12627440/277662765-5075814939124574-9030477134147320778-n_orig.jpg")

  event_space_11 = EventSpace.create!(name:"Centro de eventos Puerto Marina", adress:"Av. Ifarle Ote. 6701, Talcahuano, Bío Bío", description:"A sophisticated rooftop lounge with panoramic views of the city, perfect for cocktail parties and networking events.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_3, city:"Concepcion", image_url:"https://www.chennaiconventioncentre.com/wp-content/uploads/2019/02/chennaiCC-820x410.jpg")

  event_space_12 = EventSpace.create!(name:"Bami Casita", adress:"Avenida Quinta 825, Viña del Mar, Valparaíso", description:"A chic industrial-style event space with exposed brick walls and high ceilings, ideal for trendy weddings and fashion shows.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_2, city:"Viña del Mar", image_url:"https://www.dcweddingandevents.com/img/2.jpg")

  event_space_13 = EventSpace.create!(name:"Centro de Eventos Alto Valparaíso", adress:"Condell 1190, piso 10, Valparaíso", description:"A classic and elegant ballroom with a timeless design, ideal for black-tie weddings and formal events.", price_per_hour:rand(1000..2000), min_hour:rand(4..8), user:user_2, city:"Viña del Mar", image_url:"https://www.fourseasons.com/content/dam/fourseasons/images/web/ORL/ORL_460_aspect16x9.jpg/jcr:content/renditions/cq5dam.web.720.405.jpeg")


  # puts "Creating Booking"
  # Booking.create!(user:user_2, event_space:event_space_2, start_date:"04-april-2023", end_date:"5-april-2023", qty_hour:24, total_cost:500)
  # Booking.create!(user:user_2, event_space:event_space_1, start_date:"02-june-2023", end_date:"02-june-2023", qty_hour:5, total_cost:50)

  puts "Creating Chatroom"
  Chatroom.create(name: "general")

  puts "Everything right"
