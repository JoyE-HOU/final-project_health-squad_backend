# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Prescription.delete_all
Prescription.destroy_all
Medication.destroy_all
User.destroy_all

joyevans = User.create(username: "joyevans21", password: "password")

atro = Medication.create(name:"Atorvastatin 10 MG Tablet", description:"Tablet", dosage:"10 MG", directions:"take 1 tablet per day", count:90)
Medication.create(name:"Donepezil HCL 5 MG Tablet", description:"Tablet", dosage:"5 MG", directions:"take 1 tablet per day", count:90)
Medication.create(name:"Letrozole 2.5 MG Tablet", description:"Tablet", dosage:"2.5 MG", directions:"take 1 tablet per day", count:30)
Medication.create(name:"Combigan Eye Drops", description:"Eye Drops", dosage:"5 mL", directions:"take 1 drop in each eye twice a day", count:0)
lum = Medication.create(name:"Lumigan 0.01% Eye Drops", description:"Eye Drops", dosage:"2.5 mL", directions:"take 1 drop in each eye in the evening once a day", count:0)
Medication.create(name:"Spring Valley Omega-3 Fish Oil Dietary Supplement", description:"Tablet", dosage:"1000 mg", directions:"take 1 tablet once a day", count:180)
Medication.create(name:"Spring Valley Calcium plus Vitamin D3 20mcg Dietary Supplement", description:"Tablet", dosage:"600 mg", directions:"take 1 tablet once a day", count:100)
Medication.create(name:"Spring Valley Glucosamine Chondroitin Dietary Supplement", description:"Tablet", dosage:"n/a", directions:"take 2 tablets once a day", count:170)
Medication.create(name:"Equate 8HR Arthritis Pain Relief", description:"Tablet", dosage:"650 mg", directions:"take 2 tablets every 8 hours with water", count:225)
Medication.create(name:"Equate Non-Drowsy Allergy Relief", description:"Tablet", dosage:"10 mg", directions:"take 1 tablet per day", count:150)
Medication.create(name:"Equate Ibuprofen", description:"Tablet", dosage:"200 mg", directions:"n/a", count:100)
Medication.create(name:"Flintstones with Iron", description:"Tablet", dosage:"n/a", directions:"take 1 tablet per day with day", count:60)

prescription1 = Prescription.create(user_id: joyevans.id, medication_id: lum.id, reminder:"7:00:00")
prescription1 = Prescription.create(user_id: joyevans.id, medication_id: atro.id, reminder:"7:00")
puts 'seeded'