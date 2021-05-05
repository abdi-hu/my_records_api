# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
specialties = ['Internal Medicine', 'Cardiology', 'Orthapedic', 'Podiatry', 'Dermatology', 'OB/GYN', "Pediatric"]

10.times do
    Doctor.create(
        name: Faker::Name.name  ,
        specialty: specialties.sample,
        address: Faker::Address.full_address,
        availability: "Mon-Fri 8AM - 5PM",
        phone: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email,
        next_appoint: Faker::Date.in_date_period(month: 6),
    )
end

doctors = Doctor.all

doctors.each do |doctor|
    doctor.visits.create(
        appoint_date: Faker::Time.forward(days: 5,  period: :evening, format: :long),
        visit_summary: Faker::Lorem.paragraph,
    )
    doctor.visits.create(
        appoint_date: Faker::Time.forward(days: 5,  period: :evening, format: :long),
        visit_summary: Faker::Lorem.paragraph,
    )
    doctor.visits.create(
        appoint_date: Faker::Time.forward(days: 5,  period: :evening, format: :long),
        visit_summary: Faker::Lorem.paragraph,
    )
    doctor.visits.create(
        appoint_date: Faker::Time.forward(days: 5,  period: :evening, format: :long),
        visit_summary: Faker::Lorem.paragraph,
    )
end