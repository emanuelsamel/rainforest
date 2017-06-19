# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tire_iron = Product.create(name: 'Tire Iron', description: 'Just a tire iron', price_in_cents: 999)

black_hat = Product.create(name: 'Black Hat', description: 'This goes on your head', price_in_cents: 34999)

popcorn_maker = Product.create(name: 'Popcorn Maker', description: 'Never leave your house again', price_in_cents: 999999)
