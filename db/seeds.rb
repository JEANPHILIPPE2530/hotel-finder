# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hotel.destroy_all
Room.destroy_all

hotel = Hotel.create(name: 'LUX* Le Morne', address: "Le morne, Mauritius")
hotel1 = Hotel.create(name: 'LUX* Grand Gaube', address: "Grand Gaube, Mauritius")
hotel2 = Hotel.create(name: 'LUX* Grand Baie', address: "Grand Baie, Mauritius")
hotel3 = Hotel.create(name: 'Maritim', address: "Balaclava, Mauritius")
# hotel4 = hotel.create(name: 'St Regis', address: "Le morne, Mauritius")
# hotel5 = hotel.create(name: 'Riu', address: "Le morne, Mauritius")
# hotel6 = hotel.create(name: 'Dinarobin BC', address: "Le morne, Mauritius")
# hotel7 = hotel.create(name: 'Paradis BD', address: "Le morne, Mauritius")
# hotel8 = hotel.create(name: 'LUX* Le Morne', address: "Le morne, Mauritius")

room = Room.create(price: 11000, capacity: 2, hotel_id: hotel.id)
# room4 = room.create(price: 13000, capacity: 2, hotel_id: 5)
# room5 = room.create(price: 10000, capacity: 2, hotel_id: 6)
# room6 = room.create(price: 12000, capacity: 2, hotel_id: 7)
# room7 = room.create(price: 13000, capacity: 2, hotel_id: 8)
# room8 = room.create(price: 14000, capacity: 2, hotel_id: 9)
