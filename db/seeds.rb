# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

50.times do |u|
	u = User.create!(
		name: Faker::Name.name,
		age: Faker::Number.between(1, 70),
		address: Faker::Address.street_address,
		interest: Faker::Lorem.paragraph
		)
end