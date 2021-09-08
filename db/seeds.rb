# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rest_1 = Restaurant.create!(name: 'AA', address: 'AA street.1', phone_number: '+111', category: 'chinese')
rest_2 = Restaurant.create!(name: 'BB', address: 'BB street.2', phone_number: '+222', category: 'italian')
rest_3 = Restaurant.create!(name: 'CC', address: 'CC street.3', phone_number: '+333', category: 'japanese')
rest_4 = Restaurant.create!(name: 'DD', address: 'DD street.4', phone_number: '+444', category: 'french')
rest_5 = Restaurant.create!(name: 'EE', address: 'EE street.5', phone_number: '+555', category: 'belgian')
