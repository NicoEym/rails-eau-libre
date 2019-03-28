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



puts 'Cleaning swim races database...'
SwimRace.destroy_all
puts "Seeding swim races..."


swimrace = SwimRace.new
swimrace.name = 'Open Swim Star Strasbourg 2019'
swimrace.city_name = "Strasbourg"
swimrace.dates = DateTime.new(2019,5,19)
swimrace.source_url = "https://www.yaka-inscription.com/ossstrasbourg2019/select_competition", image_url: "http://www.openswimstars.com/wp-content/uploads/2018/08/Image60-768x512.jpg"
swimrace.longitude = Geocoder.search(swimrace.city_name).first.coordinates[1]
swimrace.latitude = Geocoder.search(swimrace.city_name).first.coordinates[0]
swimrace.photo = "‎⁨Macintosh HD⁩ ▸ ⁨Utilisateurs⁩ ▸ ⁨nicolaseymenier⁩ ▸ ⁨Bureau⁩"
swimrace.user_id = 1
swimrace.save!



event = SwimEvent.new
event.distance = 2.6
event.price = 26
event.comment = "RESTRICTIONS
Réservé aux personnes né(e)s avant le 19 mai 2005
DISPONIBILITÉ
Places limitées à : 500"
event.swim_race_id = swimrace.id
# SwimRace.create(name: "Open Swim Star Eze 2019", city_name: "Eze", dates: DateTime.new(2019,6,2), source_url: "https://www.yaka-inscription.com/osseze2019/select_competition", image_url: "http://www.openswimstars.com/wp-content/uploads/2018/08/HDS_4294-copie-min-768x512.jpg")
# SwimRace.create(name: "EDF Aqua Challenge Paris 2019", city_name: "Paris", dates: DateTime.new(2019,9,2), source_url: "https://www.ffneaulibre.fr/evenements/voir/5317/edf-aqua-challenge-paris-paris-19-buttes-chaumont", image_url: "https://www.ffneaulibre.fr/images/epreuves/eau-libre-2b20ae6a.jpg")




