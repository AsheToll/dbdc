# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Neighborhood.destroy_all
User.destroy_all
Band.destroy_all
DiveBar.destroy_all

adams = Neighborhood.create(name: "Adams Morgan")
dupont = Neighborhood.create(name: "Dupont Circle")
foggy = Neighborhood.create(name: "Foggy Bottom")
brookland = Neighborhood.create(name: "Brookland")
chinatown = Neighborhood.create(name: "Chinatown")

sam = User.create(name: "Sam Kane", username: "Sak", fav_genre: "Pop", neighborhood: "Dupont Circle")
ashley = User.create(name: "Ashley Tolen", username: "AshT", fav_genre: "Classic Rock", neighborhood: "Brookland")

funky = Band.create(name: "Funky Hunks", genre: "Funk")
cocoverde = Band.create( name: "Coco Verde", genre: "Classic Rock")
three = Band.create(name: "Three Directions", genre: "Pop")
ruby = Band.create(name: "Ruby and the Gems", genre: "Electronic")

dans = DiveBar.create(name: "Dan's Cafe", description: "Lorem Ipsum Text Going Here!", neighborhood_id: adams.id) # Adams Morgan
bedrock = DiveBar.create(name: "Bedrock Billiards", description: "Lorem Ipsum Text Going Here!", neighborhood_id: adams.id) # AdMo
big_hunt = DiveBar.create(name: "The Big Hunt", description: "Lorem Ipsum Text Going Here!", neighborhood_id: dupont.id) # Dupont Circle
fox_hounds = DiveBar.create(name: "The Fox and Hounds Lounge", description: "Lorem Ipsum Text Going Here!", neighborhood_id: dupont.id) # Dupont
bottom = DiveBar.create(name: "The Bottom Line", description: "Lorem Ipsum Text Going Here!", neighborhood_id: foggy.id) # Foggy Bottom
recessions = DiveBar.create(name: "Recessions", description: "Lorem Ipsum Text Going Here!", neighborhood_id: foggy.id) # Foggy
dewdrop = DiveBar.create(name: "Dew Drop Inn", description: "Lorem Ipsum Text Going Here!", neighborhood_id: brookland.id) # Brookland
jimmys = DiveBar.create(name: "Jimmy Valentine's Lonely Hearts Club", description: "Lorem Ipsum Text Going Here!", neighborhood_id: brookland.id) # Brookland
jackpot = DiveBar.create(name: "Jackpot", description: "Lorem Ipsum Text Going Here!", neighborhood_id: chinatown.id) # Chinatown
rocket_bar = DiveBar.create(name: "Rocket Bar", description: "Lorem Ipsum Text Going Here!", neighborhood_id: chinatown.id) # Chinatown

deeznuts = BarBand.create(dive_bar_id: dans.id, band_id: three.id)

rev1 = Review.create(user_id: sam.id, dive_bar_id: dans.id, rating: 5, review: "This place had a terrible band but I really like my margarita!")
rev2 = Review.create(user_id: ashley.id, dive_bar_id: dewdrop.id, rating: 9, review: "Great place! Great deals! My friends and I love hanging out here!")