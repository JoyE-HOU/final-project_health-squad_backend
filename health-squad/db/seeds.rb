# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


joyevans = User.create(username: "joyevans21", password: "password")

atorvastatin = Medication.create(name:"Atorvastatin 10 MG Tablet", description:"Tablet", dosage:"10 MG", directions:"take 1 tablet per day", count:90)
Medication.create(name:"Atorvastatin 10 MG Tablet", description:"Tablet", dosage:"10 MG", directions:"take 1 tablet per day", count:90)
Medication.create(name:"Amlodipine Besylate 10 MG Tablet", description:"Tablet", dosage:"10 MG", directions:"take 1 tablet per day", count:30)
Medication.create(name:"Combigan Eye Drops", description:"Drops", dosage:"n/a", directions:"instill 1 drop in both eyes twice per day", count:0)
Medication.create(name:"Lumigan 0.01% Eye Drops", description:"Drops", dosage:"n/a", directions:"instill 1 drop in both eyes in the morning", count:0)
Medication.create(name:"Donepezil HCL 5 MG Tablet", description:"Tablet", dosage:"5 MG", directions:"take 1 tablet per day", count:90)
Medication.create(name:"Fluorometholone 0.1% Drops", description:"Drops", dosage:"0.1%", directions:"instill 1 drop in both eyes twice per day", count:0)
Medication.create(name:"Letrozole 2.5 MG Tablet", description:"Tablet", dosage:"2.5 MG", directions:"take 1 tablet per day", count:30)
Medication.create(name:"Lisinopril 20 MG Tablet", description:"Tablet", dosage:"20 MG", directions:"take 1 tablet per day", count:90)
Medication.create(name:"Equate One Daily Women’s 50 Multivitamin Supplement Tablet", description:"Tablet", dosage:"n/a", directions:"take 1 tablet per day", count:0)
Medication.create(name:"Equate 8 HR Arthritis Pain Relief Acetaminophen Extended-Release Tablets", description:"Tablet", dosage:"650 MG", directions:"take 1 tablet twice per day", count:0)
Medication.create(name:"Equate NON-DROWSY ALLERGY Relief LORATADINE/ANTIHISTAMINE Tablets", description:"Tablet", dosage:"10 MG", directions:"take 1 tablet twice per day", count:0)
Medication.create(name:"Spring Valley Omega 3 Tablets", description:"Tablet", dosage:"1040mg", directions:"take 1 tablet per day", count:0)
Medication.create(name:"Spring Valley Glucosamine Chondroitin Dietary Supplement", description:"Tablet", dosage:"n/a", directions:"take 1 tablet per day", count:0)
Medication.create(name:"Spring Valley Calcium Vitamin D3 800iu", description:"Tablet", dosage:"600mg", directions:"take 1 tablet twice per day", count:0)
Medication.create(name:"Flintstones with Iron", description:"Tablet", dosage:"n/a", directions:"take 1 tablet per day", count:0)

prescription1 = Prescription.create(user_id: 1, medication_id: 1, reminder:"7:00")

puts 'seeded'