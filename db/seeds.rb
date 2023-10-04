# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.delete_all
Timeslot.delete_all
User.delete_all

User.create(email: "employé@mail.com", password: "123456", name: "employé 1", department: 1, manager: false)
User.create(email: "manager@mail.com", password: "123456", name: "manager", department: 1, manager: true)
User.create(email: "employé2@mail.com", password: "123456", name: "employé2", department: 1, manager: false)
