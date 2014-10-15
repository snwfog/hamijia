# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def gen_user
  User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      phone_number: Faker::PhoneNumber.cell_phone,
  )
end

10.times do
  Student.create(
    city: %w(Shanghai Beijing Xi'an Guangzhou).sample,
    country: %w(China Vietnam Korea Japan).sample,
    education: %w(Highschool College Bachelor Master Doctora).sample,
    user: gen_user
  )
end

10.times do
  Owner.create(
    primary_language: %w(English French Chinese).sample,
    user: gen_user
  )
end

