# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create!(name: 'Titanic', description: 'felhefhefihefiiehef', director: 'D.Robert',song_id: 1)
Movie.create!(name: 'Startrec', description: 'ssbiidsosaoabc', director:'A.Great',song_id: 2)
 Movie.create!(name: 'Dopit', description: 'http:nknasniiaios', director: 'M.Bod',song_id: 3)

puts "#{Movie.count} movies created!"


# ari courses
Song.create!(title: 'Stealing Snacks 101', singer: 'ari')
Song.create!(title: 'Dancing 201', singer: 'ari')
Song.create!(title: 'Being cute but not in an obvious way 301', singer: 'ari')
