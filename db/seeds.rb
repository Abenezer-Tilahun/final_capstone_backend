# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: 'bob@gmail.com', password: '123456',created_at: Time.now, updated_at: Time.now)
User.create!(email: 'bob1@gmail.com', password: '123456',created_at: Time.now, updated_at: Time.now)
User.create!(email: 'bob2@gmail.com', password: '123456',created_at: Time.now, updated_at: Time.now)

Car.create!(make: 'Tesla', model: 'BMW',description:'This is a car for rent',image:'https://',number_of_passenger: 4,is_available: true,price_per_hour:10.0, price_per_day:50, created_at: Time.now, updated_at: Time.now, user: User.first)
Car.create!(make: 'Tesla', model: 'Toyota',description:'This is a car for rent',image:'https://',number_of_passenger: 4,is_available: true,price_per_hour:10.0, price_per_day:50, created_at: Time.now, updated_at: Time.now, user: User.second)

Location.create!(full_address:'Goma, western province',created_at: Time.now, updated_at: Time.now, user: User.first)
Location.create!(full_address:'Bukavu, Norhern province',created_at: Time.now, updated_at: Time.now, user: User.second)

Reservation.create!(reservation_number: 2, date_reserved: '02/02/2023', user: User.first,location: Location.first,car: Car.first,created_at: Time.now, updated_at: Time.now)
