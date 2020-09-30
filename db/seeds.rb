require 'faker'
User.destroy_all
Venue.destroy_all
VenueComment.destroy_all

u1 =  User.create(name: Faker::Name.name, bio: "I hope to find some great rock shows on here. I am new to the area and hoping to find some great shows and friends to go with nearby")
u2 =  User.create(name: Faker::Name.name, bio: "I only have a bio because I needed one to make a profile and comment on my favorite artists")
u3 =  User.create(name: Faker::Name.name, bio: "I love anything that has a sick guitar solo and crazy vocals")
u4 =  User.create(name: Faker::Name.name, bio: "A free spirit with a wild heart. Hoping to find music at an extraordinary scene that will bring out my inner spirit animal")
u5 =  User.create(name: Faker::Name.name, bio: "I have been a musician all my life. I like going to nearby shows to bring me inspiration")
u6 =  User.create(name: Faker::Name.name, bio: "Nothing better than a cold beer on a Friday Night. Only thing that will make it better is some good country music")
u7 =  User.create(name: Faker::Name.name, bio: "My printer just told me it was joining a band which makes sense. It loves to jam. I want to see some jamming concerts myself.")
u8 =  User.create(name: Faker::Name.name, bio: "What do you call a hard rock band full of old people. Near death metal. But honestly, thought, love any kind of music I can get my hands on")
u9 =  User.create(name: Faker::Name.name, bio: "looking for music and chill vibes that will hit me right in the feels")
u10 =  User.create(name: Faker::Name.name, bio: "I want to party all day and party all night. Looking for a place and people that want to do the same")
u11 =  User.create(name: Faker::Name.name, bio: "rather be stuck with rock than a hard place")
u12 =  User.create(name: Faker::Name.name, bio: "I love indie music. The more obscure the better")
u13 =  User.create(name: Faker::Name.name, bio: "‘I live for the nights that I can’t remember with the people that I won’t forget.’ – Drake. Want to a go to shows where people feel the same way")
u14 =  User.create(name: Faker::Name.name, bio: "Want to go to shows where I am wild and free and I can scream as loud as I want")
u15 =  User.create(name: Faker::Name.name, bio: "Nothing better than the classics")
u16 =  User.create(name: Faker::Name.name, bio: "when a girly pop song comes on the radio, sometimes I leave it on! Cause dangit, top 40 hits are in the top 40 for a reason! They are catchy!")
u17 =  User.create(name: Faker::Name.name, bio: "I go to shows to find the artist that will be the next big thing")
u18 =  User.create(name: Faker::Name.name, bio: "‘Music acts like a magic key, to which the most tightly closed heart opens.’ ― Maria Augusta von Trapp")
u19 =  User.create(name: Faker::Name.name, bio: "Love to hear the stories that country music tell.")
u20 =  User.create(name: Faker::Name.name, bio: "do not really listen to music but hoping to get into it.")

neumos = Venue.create(name: "Neumos", description: "One of the most respected and reliable venues in the city as far as booking talent goes, Neumos is the hub around which Capitol Hill rotates. Its relatively small room is invariably packed to capacity as people dance or sway to the latest mega-hyped act to roll through town.", location: "Capitol Hill", capacity: 650, popularity: 7, img_url: "https://images.radio.com/kisw/DirtyHoney_2020_0002.jpg?width=775&height=515&crop=775:515,smart")
tractor_tavern = Venue.create(name: "Tractor Tavern", description: "The Tractor's got great Americana decor, PBR tallboys, and the best selection of live local and national alt-country, rockabilly, old-time, folk, blues, and bluegrass bands in town. And square dancing once a month.", location: "Ballard", capacity: 400, popularity: 6, img_url: "https://www.pollstar.com/Image/VenuePhotos/903cabd8-1cb2-47be-8808-57166e965d78-TractorTavern.png")
sunset_tavern = Venue.create(name: "Sunset Tavern", description: "The Sunset used to be a Chinese restaurant, and it shows through in the red-and-lanterny décor. It's a divey rock-and-roll bar, and it's fun, with plenty of live music, karaoke, and B-movie nights. Soak up the booze with on-site Flying Squirrel Pizza.", location: "Ballard", capacity: 200, popularity: 4, img_url: "https://i.ticketweb.com//i/venue/18979_Venue.jpg?v=15")
blue_moon_tavern = Venue.create(name: "Blue Moon Tavern", description: "With us since 1934, the Blue Moon's dingy but well-loved, and pretty much everyone is welcome on its barstools. Plus it hosts a wide variety of local talent, from stand-up comedians to live music, almost every night of the week.", location: "University District", capacity: 99, popularity: 3, img_url: "https://static.seattletimes.com/wp-content/uploads/2019/05/05012019_operaontap_204521-1020x680.jpg")
showbox_downtown = Venue.create(name: "The Showbox", description: "The Showbox is a great place to see a show, even when it's sold out. There's hardly a bad sight line in the house; it's got two bars; and the room has the classic charm of an old theater.", location: "Downtown", capacity: 1130, popularity: 9, img_url: "https://www.showboxpresents.com/assets/img/06-99a81ac274.png")
showbox_sodo = Venue.create(name: "Showbox SoDo", description: "The hugely popular Showbox downtown has spawned an offspring in this enormous warehouse space (formerly home to the Fenix and the Premier) near Safeco Field. It's mostly a large-scale performance venue; hardly anyone goes there just to drink except maybe to take advantage of the happy-hour specials before a game at Safeco.", location: "SoDo", capacity: 1800, popularity: 7, img_url: "https://d3nxoulyw7bc8u.cloudfront.net/images/venue/619/c5f88c95-0e23-4984-ab3e-d29335ac9e6d.jpg")
clockout_lounge = Venue.create(name: "Clock-Out Lounge", description: "The Clock-Out Lounge is a bar-restaurant-club-venue hybrid, hosting live music Thursday through Saturday with karaoke and DJs on weeknights. About the space, co-owner Jodi Ecklund said, 'The focus of our create business is fostering the local music scene as well as the community of Beacon Hill and surrounding neighborhoods.'", location: "Beacon Hill", capacity: 99, popularity: 2, img_url: "https://static.seattletimes.com/wp-content/uploads/2018/03/03212018_Clock-Out-Lounge_125843-780x585.jpg")
paramount = Venue.create(name: "The Paramount Theatre", description: "The Paramount is where the big dogs go when they're rolling through town, your Nick Caves, your Adeles, your Aziz Ansaris. A historic venue with history to spare, the Paramount gives you an excuse to bust out your Sunday best and treat yourself.", location: "Downtown", capacity: 2807, popularity: 8, img_url: "https://lh3.googleusercontent.com/proxy/yExQcKa5nx5aGwHjxjZ7fuA3eDon7vTQuvGPWyswEjzmgiRllH9HmEm5c23oP2ouffHGL3G_qpc8NVvAoGip9awceJzCbUcJK9l0lS1CYDoGA4b8QwycV6VhmiASoQrbQz8674y9HXYPHIo")
neptune = Venue.create(name: "The Neptune Theatre", description: "A renovated movie theater smack-dab in the middle of the University District, the Neptune plays host to big-name rap and rock acts from across the country in its strangely serene auditorium.", location: "University District", capacity: 1000, popularity: 4, img_url: "https://live.staticflickr.com/8103/8523044104_257ffb25a6_b.jpg")
moore = Venue.create(name: "The Moore Theatre", description: "A historically beloved piece of architecture, Moore Theatre tends to host big-name national acts of serious renown.", location: "Downtown", capacity: 1800, popularity: 7, img_url: "https://uploads.visitseattle.org/2018/10/10171316/The-Head-and-The-Heart-at-the-Moore-Theatre_ForWeb.jpg")
crocodile = Venue.create(name: "The Crocodile", description: "One of Seattle's favorite music venues since the beginning of time (or at least grunge) got a swanky makeover back in 2009, with skylights, a proper mezzanine, dark red walls, and marble countertops in the bathrooms. Also: wood-fired pizza!", location: "Belltown", capacity: 550, popularity: 9, img_url: "https://www.thecrocodile.com/files/2014/01/The_Crocodile_09.jpg")
substation = Venue.create(name: "Substation", description: "Nestled between Fremont and Ballard, this small- to mid-size venue boasts two separate stages in an underground setting.", location: "Fremont", capacity: 400, popularity: 4, img_url: "https://www.seattlemusicinsider.com/wp-content/uploads/2020/02/Blacktop-Mojo-@-Substation-2-11-20-6.jpg")
nectar_lounge = Venue.create(name: "Nectar Lounge", description: "Offering a strange brew of live music, Nectar tends toward reggae, hiphop, bluegrass, and EDM, in a nicely airy space, including a patio and multiple levels indoors.", location: "Fremont", capacity: 475, popularity: 6, img_url: "https://img.grouponcdn.com/pwa_test/fKNC4uZHAT8PppyVMgb8GYf8mZ7/fK-920x520/v1/c700x420.jpg")
royal_room = Venue.create(name: "The Royal Room", description: "A wood-bedecked space with great acoustics, the Royal Room made its name on jazz bookings (it is partially the brainchild of musician and composer Wayne Horvitz) but has since expanded into folk, world music, and multimedia events.", location: "Columbia City", capacity: 140, popularity: 5, img_url: "https://www.theroyalroomseattle.com/wp-content/uploads/2019/04/createWorks_2012-1024x791.jpg")
wamu_theater = Venue.create(name: "WaMu Theater", description: "Nestled in the heart of CenturyLink Stadium, WaMu Theater plays host to the very hottest acts in a hangar-like space.", location: "SoDo", capacity: 7000, popularity: 7, img_url: "https://i.axs.com/14-08172012-502ea3809b614.jpeg")
key_arena = Venue.create(name: "KeyArena", description: "The largest indoor show you can attend in Seattle, this one is reserved for the only the biggest names around.", location: "Queen Anne", capacity: 17459, popularity: 7, img_url: "https://media-cdn.tripadvisor.com/media/photo-s/04/3a/f0/ea/key-arena.jpg")
barboza = Venue.create(name: "Barboza", description: "Located in Neumos' basement, Barboza is a sweaty, intimate little shoebox-shaped room that hosts a wide range of up-and-coming local and national talent.", location: "Capitol Hill", capacity: 200, popularity: 4, img_url: "https://neumos.ticketfly.com/files/2016/12/Neumos_Barboza-9-1024x643.jpg")
chop_suey = Venue.create(name: "Chop Suey", description: "Following an ownership-changeover, Chop Suey has gone from oddly Asian-themed bar and secret live music powerhouse underdog to still confusingly decorated music venue. What remains the same is its eclectic array of fairly-priced live music, from hiphop to metal to singer-songwriter types, almost every night of the week.", location: "Capitol Hill", capacity: 450, popularity: 4, img_url: "https://images.radio.com/1077theend/s3fs-public/Blogs/Screen%20Shot%202017-05-09%20at%209.38.46%20AM.png?width=775&height=515&crop=556,370,x0,y0&enable=upscale")
sea_monster_lounge = Venue.create(name: "Sea Monster Lounge", description: "The Sea Monster Lounge is dark and blue-green, but not aggressively so; this dark blue-greenness is accomplished simply with strands of Christmas lights of deep oceanic hues. The overall effect: both convivial and a bit foreboding, as every bar should be. Every night brings a different crew of jazz musicians to entertain, and on the weekends there's a jazz brunch.", location: "Wallingford", capacity: 74, popularity: 3, img_url: "https://i.ytimg.com/vi/kfnKIaqCxNA/maxresdefault.jpg")
el_corazon = Venue.create(name: "El Corazon", description: "Focused on hardcore, punk, screamo, and metal, El Corazon has a show nearly every single night. Also, Brian Foss has resurrected his beloved punk dive Funhouse in a second room, which features more 'intimate' head-banging bills.", location: "Eastlake", capacity: 800, popularity: 6, img_url: "https://www.thepier.org/wp-content/uploads/2014/11/11.12.2014-ThePier-ElCorazon015.jpg")

vc1 = VenueComment.create(user_id: User.all.sample.id, venue_id: neumos.id, content: "I love the atmosphere here")
vc2 = VenueComment.create(user_id: u6.id, venue_id: tractor_tavern.id, content: "I love the country music here. Good beer with good people.")
vc3 = VenueComment.create(user_id: User.all.sample.id, venue_id: sunset_tavern.id, content: "Dinner and a show!")
vc4 = VenueComment.create(user_id: User.all.sample.id, venue_id: blue_moon_tavern.id, content: "Constant live shows coming in and out of here. Never know what to expect.")
vc5 = VenueComment.create(user_id: User.all.sample.id, venue_id: showbox_downtown.id, content: "Everywhere has a great view of the stage.")
vc6 = VenueComment.create(user_id: User.all.sample.id, venue_id: showbox_sodo.id, content: "This place is huge!!!")
vc7 = VenueComment.create(user_id: User.all.sample.id, venue_id: clockout_lounge.id, content: "A bit small but is in a fun community")
vc8 = VenueComment.create(user_id: User.all.sample.id, venue_id: paramount.id, content: "This place is ginourmous! All the big names play here when they are in town")
vc9 = VenueComment.create(user_id: User.all.sample.id, venue_id: neptune.id, content: "a fun renovated theater right in the heart of UW")
vc10 = VenueComment.create(user_id: User.all.sample.id, venue_id: moore.id, content: "This is old theater is a great piece of architecture")
vc11 = VenueComment.create(user_id: User.all.sample.id, venue_id: crocodile.id, content: "I understand why it is one of Seattle's favorite music venues")
vc12 = VenueComment.create(user_id: User.all.sample.id, venue_id: substation.id, content: "very underground vibe")
vc13 = VenueComment.create(user_id: User.all.sample.id, venue_id: nectar_lounge.id, content: "Fun enviornment with a wide vaariety of music")
vc14 = VenueComment.create(user_id: User.all.sample.id, venue_id: royal_room.id, content: "The Royal Room has a lot of artists with thoughtful music come through")
vc15 = VenueComment.create(user_id: u10.id, venue_id: wamu_theater.id, content: "This venue is always a party!!!")
vc16 = VenueComment.create(user_id: User.all.sample.id, venue_id: key_arena.id, content: "This place is ridiculously massive. Have to get there early or you will be stuck behind a sea of people")
vc17 = VenueComment.create(user_id: User.all.sample.id, venue_id: barboza.id, content: "Barboza is an underground, exciting party underneath Neumos")
vc18 = VenueComment.create(user_id: User.all.sample.id, venue_id: chop_suey.id, content: "The decor is something to get used to but the talent that comes through is amazing.")
vc19 = VenueComment.create(user_id: User.all.sample.id, venue_id: sea_monster_lounge.id, content: "The swanky jazz vibe in here is very fun. The name is fitting.")
vc20 = VenueComment.create(user_id: User.all.sample.id, venue_id: el_corazon.id, content: "The place seems pretty cool but they really only have hardcore music. That ain't me.")

vc21 = VenueComment.create(user_id: User.all.sample.id, venue_id: neumos.id, content: "The place seems pretty cool but not the place for me")
vc22 = VenueComment.create(user_id: User.all.sample.id, venue_id: neumos.id, content: "My favorite place to watch live music")
vc23 = VenueComment.create(user_id: User.all.sample.id, venue_id: neptune.id, content: "Cool name but not as coll of a venue")

# Hip-hop:
# Shabazz Palaces
# Macklemore
# Travis Thompson 
# Blue Scholars
# Sir Mix-A-Lot 
# Sol 
# Gifted Gab
# Brothers From Another
# DoNormaal
# Dave B

# Rock:
# Tres Leches
# Foo Fighters
# Band of Horses
# Pedro the Lion
# Pickwick
# Tacocat
# The Black Tones
# Tangerine
# Pearl Jam
# Chastity Belt
# Modest Mouse 
# Soundgarden
# Heart
# Death Cab for Cutie

# Punk/Metal:
# Bell Witch
# Queensryche
# Monsterwatch
# Fastbacks
# Alice in Chains
# Sandrider
# Endorphins Lost
# Great Falls
# Post/Boredom
# Pisswand

# Folk/Country:
# Fleet Foxes
# Damien Jurado
# The Head and the Heart
# The Cave Singers
# Mount Eerie
# Aaron Crawford
# Brandi Carlile
# Old Coast


# Pop/Electronic:
# Navvi