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


# puts 'Cleaning swim event database...'
# SwimEvent.destroy_all
# puts "Seeding swim events..."

# SwimEvent.create(distance: 10)
# SwimEvent.create(distance: 5)
# SwimEvent.create(distance: 5.5)
# SwimEvent.create(distance: 5.250)
# SwimEvent.create(distance: 1.25)
# SwimEvent.create(distance: 2.5)
# SwimEvent.create(distance: 2.6)
# SwimEvent.create(distance: 1)
# SwimEvent.create(distance: 1.1)
# SwimEvent.create(distance: 2)
# SwimEvent.create(distance: 3.5)
# SwimEvent.create(distance: 25)


# puts 'Cleaning swim races database...'
# SwimRace.destroy_all
# puts "Seeding swim races..."
# SwimRace.create(name: "Open Swim Star Strasbourg 2019", city_name: "Strasbourg", dates: DateTime.new(2019,5,19), source_url: "https://www.yaka-inscription.com/ossstrasbourg2019/select_competition", image_url: "http://www.openswimstars.com/wp-content/uploads/2018/08/Image60-768x512.jpg")
# SwimRace.create(name: "Open Swim Star Eze 2019", city_name: "Eze", dates: DateTime.new(2019,6,2), source_url: "https://www.yaka-inscription.com/osseze2019/select_competition", image_url: "http://www.openswimstars.com/wp-content/uploads/2018/08/HDS_4294-copie-min-768x512.jpg")
# SwimRace.create(name: "EDF Aqua Challenge Paris 2019", city_name: "Paris", dates: DateTime.new(2019,9,2), source_url: "https://www.ffneaulibre.fr/evenements/voir/5317/edf-aqua-challenge-paris-paris-19-buttes-chaumont", image_url: "https://www.ffneaulibre.fr/images/epreuves/eau-libre-2b20ae6a.jpg")


puts 'Cleaning swim race events  database...'
SwimRaceEvent.destroy_all
puts "Seeding swim race events..."
SwimRaceEvent.create(swim_race_id: 1, swim_event_id: 19,price: 26, equipment: "none")
SwimRaceEvent.create(swim_race_id: 2, swim_event_id: 13,price: 18, equipment: "none")
SwimRaceEvent.create(swim_race_id: 2, swim_event_id: 18,price: 26, equipment: "none")
SwimRaceEvent.create(swim_race_id: 2, swim_event_id: 14,price: 31, equipment: "none")
SwimRaceEvent.create(swim_race_id: 2, swim_event_id: 14,price: 31, equipment: "Palmes")



SwimRaceEvent.create(swim_race_id: 3, swim_event_id: 17,price: 30, equipment: "none")
SwimRaceEvent.create(swim_race_id: 3, swim_event_id: 18,price: 30, equipment: "none")
SwimRaceEvent.create(swim_race_id: 3, swim_event_id: 18,price: 30, equipment: "Tout matériel")
SwimRaceEvent.create(swim_race_id: 3, swim_event_id: 14,price: 30, equipment: "none")
