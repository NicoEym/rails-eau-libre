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



puts "Seeding swim events..."

SwimEvent.create(distance: 10)
SwimEvent.create(distance: 5)
SwimEvent.create(distance: 5.5)
SwimEvent.create(distance: 5.250)
SwimEvent.create(distance: 1.25)
SwimEvent.create(distance: 2.5)
SwimEvent.create(distance: 2.6)
SwimEvent.create(distance: 1)
SwimEvent.create(distance: 1.1)
SwimEvent.create(distance: 2)
SwimEvent.create(distance: 3.5)
SwimEvent.create(distance: 25)

