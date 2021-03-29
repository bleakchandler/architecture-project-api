# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


the_shed = Site.create(name: "The Shed", description: "Designed by Diller Scofidio + Renfro in collaboration with Rockwell Group, the Shed is a $475 million arts center", location: "545 West 30th street New York, N.Y 10001", architectural_style: "Shed", photo_url: "https://media.architecturaldigest.com/photos/5ca64b65409e480bfa72a551/master/w_1600%2Cc_limit/02_The%2520Shed_Photography%2520by%2520Iwan%2520Baan.jpg")
jane_carousel = Site.create(name: "Jane Carousel", description: "Originally built in 1922 and located on the banks of the East River, Brooklyn's Jane's Carousel has become a popular destination to visit.", location: "New Dock st. Brooklyn, NY 11201", architectural_style: "arcylic pavilion", photo_url: "https://media.architecturaldigest.com/photos/59b2b3d7922511310f4e4675/master/w_1600%2Cc_limit/Jane's%2520Carousel.jpg" )

bleak = User.create(name: "Bleak")

bleaks_itinerary = Itinerary.create(description: "Test Itinerary", name:"Bleak's Itinerary", user: bleak)

itinerary_site_1 = ItinerarySite.create(name: "Itinerary Site 1", site: the_shed, itinerary: bleaks_itinerary)

puts "Seeded!"