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
  owner = Owner.create(
    primary_language: %w(English French Chinese).sample,
    user: gen_user
  )

  rand(3).times do
    offering = Offering.create(active: [true, false].sample)
    offering.house = House.create
    offering.house.address = Address.create do |addr|
      addr.address = Faker::Address.street_address
      addr.postal_code = Faker::Address.postcode
      addr.apartment = Faker::Address.secondary_address
      addr.city = Faker::Address.city
      addr.province = Faker::Address.state
    end

    rand(5).times { offering.house.rooms.create }
    owner.offerings << offering
  end
end

