Neighborhood.destroy_all
User.destroy_all
Band.destroy_all
DiveBar.destroy_all
Review.destroy_all
BarBand.destroy_all
Favorite.destroy_all


adams = Neighborhood.create(name: "adams morgan")
dupont = Neighborhood.create(name: "dupont circle")
foggy = Neighborhood.create(name: "foggy bottom")
brookland = Neighborhood.create(name: "brookland")
chinatown = Neighborhood.create(name: "chinatown")

sam = User.create(name: "Sam Kane", username: "Sak", fav_genre: "Pop", neighborhood_id: dupont.id, password: "sam")
ashley = User.create(name: "Ashley Tolen", username: "AshT", fav_genre: "Classic Rock", neighborhood_id: brookland.id, password: "ash")
luke = User.create(name: "Luke", username: "LMal", fav_genre: "Rap", neighborhood_id: chinatown.id, password: "luke")
claudia = User.create(name: "Claudia", username: "Claud", fav_genre: "Country", neighborhood_id: foggy.id, password: "claudia")
rob = User.create(name: "Rob", username: "Trob", fav_genre: "funk", neighborhood_id: adams.id, password: "rob")

funky = Band.create(name: "Funky Hunks", genre: "Funk", description: "We are a group of 3 guys who enjoy playing funk music!  We play in the
Washington DC area at a few different bars.  We formed this band back in college in 2001 and continue to bring some good
funk to all of our followers!  Come check us out!")
cocoverde = Band.create( name: "Coco Verde", genre: "Classic Rock", description: "Just a few Hipster playing some music.  Come check us out at a dive bar if you feel like it.
The people in Brooklyn love us so we are trying to get some of that love down in the DC area.")
three = Band.create(name: "Three Directions", genre: "Pop", description: "Three Directions was inspired by a very popular boy band.  We enjoy playing covers of other boy bands
but we also have our own original music.  Come dance the night away with some fun pop hits from past and present!")
ruby = Band.create(name: "Ruby and the Gems", genre: "Electronic", description: "Ruby and The Gems is a group of software engineers who like to let lose playing electronic music on the weekends!
Come let loose and see us at one of the many bars we play at on the weekends!")
fat = Band.create(name: "Fat Hogs", genre: "Country", description: "The Fat Hogs enjoy bringing the south to Washington DC!  If you haven't heard us yet you will soon!
We play up and down the east coast all year long!  With country hits you will never get out of your head, our band is here to give you a great country music performance!  
Be sure to find us when we are in your town!")
will = Band.create(name: "Will and the Hot Peppers", genre: "Rock", description: "If you like to rock, then you must see Will and the Hot Peppers!  We love to have a good time and rock out!
We have become a household name in the DC area and can't wait to expand our Following.  Our lead singer Will writes all of our hits that will make you come back for more! If you
haven't seen us yet you are really missing out.  Between our own music and playing some of the classics, you are bound to have a rockin' time!  Will and the Hot Peppers are expanding their tour to other cities on the east coast!
Be sure to check our schedule reguarly!  ROCK ON AND ROCK OUT! ")


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

play1 = BarBand.create(dive_bar_id: dans.id, band_id: three.id)
play2 = BarBand.create(dive_bar_id: jackpot.id, band_id: cocoverde.id)
play3 = BarBand.create(dive_bar_id: jimmys.id, band_id: ruby.id)
play4 = BarBand.create(dive_bar_id: rocket_bar.id, band_id: cocoverde.id)
play5 = BarBand.create(dive_bar_id: dans.id, band_id: funky.id)
play6 = BarBand.create(dive_bar_id: fox_hounds.id, band_id: fat.id)
play7 = BarBand.create(dive_bar_id: recessions.id, band_id: will.id)
play8 = BarBand.create(dive_bar_id: dans.id, band_id: will.id)
play9 = BarBand.create(dive_bar_id: dewdrop.id, band_id: will.id)
play10 = BarBand.create(dive_bar_id: bedrock.id, band_id: three.id)
play11 = BarBand.create(dive_bar_id: big_hunt.id, band_id: funky.id)
play12 = BarBand.create(dive_bar_id: bottom.id, band_id: funky.id)
play13 = BarBand.create(dive_bar_id: jackpot.id, band_id: will.id)
play14 = BarBand.create(dive_bar_id: jackpot.id, band_id: three.id)


rev1 = Review.create(user_id: sam.id, dive_bar_id: dans.id, rating: 5, review: "This place had a terrible band but I really like my margarita!")
rev2 = Review.create(user_id: ashley.id, dive_bar_id: dewdrop.id, rating: 9, review: "Great place! Great deals! My friends and I love hanging out here!")
rev3 = Review.create(user_id: luke.id, dive_bar_id: jackpot.id, rating: 8, review: "Jackpot is totally the place to go! I don't want to sound cliche but man I hit the jackpot
by coming here! I will be back with some friends! great vibes and great times!!!")
rev4 = Review.create(user_id: luke.id, dive_bar_id: big_hunt.id, rating: 3, review: "Not a big fan. Probably won't come back.
 Bad service, bad food, bad band, and just ok drinks. Guess ill stick to beer if I ever come back :/ ")
rev5 = Review.create(user_id: claudia.id, dive_bar_id: rocket_bar.id, rating: 7, review: "Really cool place! They have games and drinks but no food.  Chill place to hang in the Chinatown area.")
rev6 = Review.create(user_id: rob.id, dive_bar_id: dans.id, rating: 10, review: "I love this place!  Drinking out of a squeeze bottle is such a cool idea!  It was hard to find this place
but its worth the search!  I am excited to come back on a Saturday night!  Heard they have some cool bands that play here
and I want to check them out.  Would recommend this place to all who like to have a good time!")
rev7 = Review.create(user_id: ashley.id, dive_bar_id: recessions.id, rating: 4, review: "Eh.  Place is just ok.  Will and the Hot Peppers were playing here and really brought the crowd!  I enjoyed
them but the actual bar wasn't so hot!")
rev8 = Review.create(user_id: sam.id, dive_bar_id: dans.id, rating: 7, review: "had to come back and review again!  Came back here with some friends and had a fun time!  Band was much better!  Will and the Hot Peppers are sooooooooooo good.")
rev9 = Review.create(user_id: claudia.id, dive_bar_id: fox_hounds.id, rating: 1, review: "Do Not Come Here! It Is TERRIBLE for many reasons!")
rev10 = Review.create(user_id: luke.id, dive_bar_id: dans.id, rating: 3, review: "Def not my spot.  Was hard to find and the band was awful.  Grungy little place and I will not return!")
rev11 = Review.create(user_id: ashley.id, dive_bar_id: jimmys.id, rating: 5, review: "Been here a few times and its not a bad spot.  Depends on what band is playing.  They have a good selection of beers
but the mixed drinks aren't strong at all! Oh well.... ")
rev12 = Review.create(user_id: rob.id, dive_bar_id: jackpot.id, rating: 9, review: "A hidden gem!  So happy I found this place! It's small and cozy.  Not too loud either!
good place to take a date and get to know someone!  I just have to find a date first....")
rev13 = Review.create(user_id: sam.id, dive_bar_id: bottom.id, rating: 6, review: "Band was cool.  Vibe was just ok.  Would return but not going to be 
a go to spot.  The Bottom Line is a solid spot in Foggy Bottom.  Happy Hour has some good deals.")
rev14 = Review.create(user_id: luke.id, dive_bar_id: fox_hounds.id, rating: 2, review: "I would usually say that any place with alcohol is fine, but no.  I was not satisfied with their drinks!  The mixed
drinks were weak and the beer I had was sour!  The Fat Hogs were playing here and they weren't good either!  Man, what a place.  Can't believe I was here.  I do not recommend.  Gave it a 2 instead of a 1 because of the cleanliness of the place")









fav1 = Favorite.create(user_id: sam.id, dive_bar_id: dans.id)
fav2 = Favorite.create(user_id: luke.id, dive_bar_id: jackpot.id)
fav3 = Favorite.create(user_id:ashley.id, dive_bar_id: dewdrop.id)
fav4 = Favorite.create(user_id: sam.id, dive_bar_id: rocket_bar.id)