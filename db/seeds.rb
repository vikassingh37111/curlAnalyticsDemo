# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
	Country.create(
		name: Faker::Address.country, 
		capital: Faker::Address.city, 
		population: Faker::Number.between(2000, 2000000), 
		gdp: Faker::Number.between(100000, 100000000)
	)
end