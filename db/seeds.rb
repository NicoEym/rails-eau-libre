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
# SwimEvent.destroy_all
puts "Seeding swim events..."



puts 'Cleaning swim races database...'
# SwimRace.destroy_all
puts "Seeding swim races..."


swimrace = SwimRace.new
swimrace.name = 'Open Swim Star Strasbourg 2019'
swimrace.city_name = "Strasbourg"
swimrace.description = "L'Open Swim Stars Harmonie Mutuelle revient à Strasbourg pour une 3e édition. Grâce à votre soutien il est devenu possible de nager au cœur de la capitale alsacienne. Et nous sommes fiers de continuer à offrir à des nageurs plus nombreux une expérience unique au cœur de l'une des plus belles villes de France. Après le lac de Baggersee, le Canal du Rhône au Rhin, les épreuves gagnent le centre-ville. A deux pas de la Petite-France, au pied de la Cathédrale, vous vous élancerez pour rejoindre le Parlement européen. Défi, plaisir, partage seront les maîtres-mots le 19 mai. Car ce qui vous tient à cœur, nous tient à cœur. Au programme, 3 courses dont 2 parcours gratuits de 200 et 400 m le long du Quai des Bateliers. L'occasion rêvée de partager votre challenge avec des nageurs moins aguerris. Alors mobilisez votre entourage. Quel que soit votre niveau, il y a une place pour vous."
swimrace.dates = DateTime.new(2019,5,19)
swimrace.source_url = "https://www.yaka-inscription.com/ossstrasbourg2019/select_competition"
swimrace.longitude = Geocoder.search(swimrace.city_name).first.coordinates[1]
swimrace.latitude = Geocoder.search(swimrace.city_name).first.coordinates[0]
swimrace.photo = "image/upload/v1553101998/avhavolnfolslnr6q0nk.jpg"
swimrace.user_id = 1
swimrace.save!


event = SwimEvent.new
event.distance = 2.6
event.price = 26
event.comment = "RESTRICTIONS
Réservé aux personnes né(e)s avant le 19 mai 2005
DISPONIBILITÉ
Places limitées à : 500
08H00 RETRAIT BONNETS DÉPART QUAI DES BATELIERS
09H15 BRIEFING 2,6 KM
09H30 DÉPART 2,6 KM
10H00 ARRIVEE PREMIERS PARTICIPANTS
11H00 DEBUT EPREUVE 400 M TOUS PUBLICS
11H30 REMISE RÉCOMPENSES QUAI DES BATELIERS"
event.swim_race_id = swimrace.id
# SwimRace.create(name: "Open Swim Star Eze 2019", city_name: "Eze", dates: DateTime.new(2019,6,2), source_url: "https://www.yaka-inscription.com/osseze2019/select_competition", image_url: "http://www.openswimstars.com/wp-content/uploads/2018/08/HDS_4294-copie-min-768x512.jpg")
# SwimRace.create(name: "EDF Aqua Challenge Paris 2019", city_name: "Paris", dates: DateTime.new(2019,9,2), source_url: "https://www.ffneaulibre.fr/evenements/voir/5317/edf-aqua-challenge-paris-paris-19-buttes-chaumont", image_url: "https://www.ffneaulibre.fr/images/epreuves/eau-libre-2b20ae6a.jpg")




