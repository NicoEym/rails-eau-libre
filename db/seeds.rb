# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
require 'nokogiri'
require 'date'


puts 'Cleaning swim event database...'
SwimEvent.destroy_all
puts "Seeding swim events..."

SwimEvent.create(swim_race_id: 19, distance: 10)
SwimEvent.create(swim_race_id: 19, distance: 5)
SwimEvent.create(swim_race_id: 19, distance: 5.5)
SwimEvent.create(swim_race_id: 22, distance: 5.250)
SwimEvent.create(swim_race_id: 22, distance: 1.25)
SwimEvent.create(swim_race_id: 12, distance: 2.5)
SwimEvent.create(swim_race_id: 12, distance: 2.6)
SwimEvent.create(swim_race_id: 11, distance: 1)
SwimEvent.create(swim_race_id: 12, distance: 1.1)
SwimEvent.create(swim_race_id: 24, distance: 2)
SwimEvent.create(swim_race_id: 25, distance: 3.5)

# puts 'Cleaning swim races database...'
#SwimRace.destroy_all
# puts "Seeding swim races..."
# SwimRace.create(name: "Open Swim Star Strasbourg 2019", city_name: "Strasbourg", dates: DateTime.new(2019,5,19), source_url: "https://www.yaka-inscription.com/ossstrasbourg2019/select_competition", image_url: "http://www.openswimstars.com/wp-content/uploads/2018/08/Image60-768x512.jpg")
# SwimRace.create(name: "Open Swim Star Eze 2019", city_name: "Eze", dates: DateTime.new(2019,6,2), source_url: "https://www.yaka-inscription.com/osseze2019/select_competition", image_url: "http://www.openswimstars.com/wp-content/uploads/2018/08/HDS_4294-copie-min-768x512.jpg")
# SwimRace.create(name: "EDF Aqua Challenge Paris 2019", city_name: "Paris", dates: DateTime.new(2019,9,2), source_url: "https://www.ffneaulibre.fr/evenements/voir/5317/edf-aqua-challenge-paris-paris-19-buttes-chaumont", image_url: "https://www.ffneaulibre.fr/images/epreuves/eau-libre-2b20ae6a.jpg")




