# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


joyevans = User.create(username: "joyevans21", password: "password")

atorvastatin = Medication.create(name:"Atorvastatin 10 MG Tablet", description:"Tablet", dosage:"10 MG", directions:"take 1 tablet per day", count:90)

prescription1 = Prescription.create(user_id: 1, medication_id: 1, reminder:"7:00")
puts 'seeded'