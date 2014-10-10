# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  Owner.create(
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     email: Faker::Internet.email,
     phone_number: Faker::PhoneNumber.cell_phone,
     primary_language: %w(English French Chinese).sample
  )

  rand(3).times do
    Owner.last.children.create(age: (1..20).to_a.sample)
  end

  Owner.last.create_home
end