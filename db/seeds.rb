# This file should contain all the record creation needed to seed the database with its default values.
# Region options: "north-rockies", "cariboos", "north-columbia", "south-columbia", "kootenay-boundary", "purcells", "lizard-range", "south-rockies", "kananaskis", "little-yoho", "jasper"? , "banff"?

northghost = "North Ghost"
southghost = "South Ghost"
kananaskis = "Kananaskis"
banff = "Banff"
lakelouise = "Lake Louise"
waterton = "Waterton"
jasper = "Jasper"
kootenay = "Kootenay"
yoho = "Yoho"

# avi terrains
green = "Simple"
blue = "Challenging"
black = "Complex"
tbd = "TBD"

puts 'Destroying previous climbs...'
Climb.destroy_all
puts 'Destroying all previous favorites...'
Favorite.destroy_all
puts 'Destroying all previous trip reports...'
TripReport.destroy_all
puts 'Destroying all previous users...'
User.destroy_all

puts 'Generating new user...'
u1 = User.create(email: "veronica.wajda@gmail.com", password: "123456", first_name: "Veronica", last_name: "Wajda")
puts "...#{User.all.count} user(s) were created!"


puts 'Generating new climbs...'
rainbowserpent = Climb.create!(name: 'Rainbow Serpent', grade: 'WI6', approach: 'III', latitude: 51.28720, longitude: -115.214, region: southghost, avi: green)
weatheringheights = Climb.create!(name: 'Weathering Heights', grade: 'WI4', approach: 'III', latitude: 51.25056, longitude: -115.19583, region: northghost, avi: "green")
beowulf = Climb.create!(name: 'Beowulf', grade: 'WI4', approach: 'III', latitude: 51.32583, longitude: -115.24139, region: northghost, avi: blue, description: "Beowulf is listed as 670m of ice in Joe Josephson’s guide book, “Waterfall Ice- Climbs in the Canadian Rockies”, but don’t let that deter you. Outside of the first and last two pitches, the ice never exceeds WI 3. The first two pitches of Beowulf represent some of the most aesthetic ice in the North Ghost. They are two separate curtains twisted into a narrow steep canyon (photos). I combined these pitches which is easy to do with proper rope technique. Don’t count on communicating with your partner once you enter the canyon. At times the wind can roar through the steep, twisting and narrow canyon walls located in one of the more remote sections of the Ghost.

  Unlike Valley of the Birds and The Good, The Bad and The Ugly (GBU), Beowulf, and even more to such extent Devil’s Punchbowl, see considerably less traffic. Part of this remoteness has recently been enhanced over new rules regarding how far you can 4-wheel drive it back along the Ghost River. Due to protected trout populations, the provincial government has limited access beyond the first river crossing which makes for quite the long day including a long hike in, long climb, descent and long hike out. Beowulf is definitely more of an alpine IV adventure considering this extra trek. Bring your headlamps and start early. If you want to tack on Devil’s Punchbowl as we did, you might consider bringing a bivy.")
malignantmushroom = Climb.create(name: 'Malignant Mushroom', description: "Description of climb goes here", grade: 'WI5', approach: 'II', latitude: 51.27036, longitude: -115.17874, region: northghost, avi: green)
aquarius = Climb.create(name: 'Aquarius', description: "Description of climb goes here",grade: 'WI4', approach: 'III', latitude: 51.28722, longitude: -115.21417, region: southghost, avi: green)
sunshine = Climb.create(name: 'Sunshine', description: "Description of climb goes here",grade: 'WI3', approach: 'II', latitude: 51.27036, longitude: -115.17874, region: southghost, avi: green)
eagle = Climb.create(name: 'Eagle', description: "Description of climb goes here",grade: 'WI5', approach: 'III', latitude: 51.32528, longitude: -115.22111, region: northghost, avi: tbd)
fangandfist = Climb.create(name: 'Fang and Fist', description: "Description of climb goes here",grade: 'WI5', approach: 'V', latitude: 51.20000, longitude: -115.17, region: northghost, avi: tbd)
kiddfalls = Climb.create(name: 'Kidd Falls', description: "Description of climb goes here",grade: 'WI4', approach: 'IV', latitude: 50.89440, longitude: -115.1875, region: kananaskis, avi: black)
grottofalls = Climb.create(name: 'Grotto Falls', description: "Description of climb goes here",grade: 'WI3', approach: 'II', latitude: 51.08330, longitude: -115.2667, region: kananaskis, avi: green)
bourgeauright = Climb.create(name: 'Bourgeau Right', description: "Description of climb goes here", grade: 'WI4R', approach: 'IV', latitude: 51.13200, longitude: -115.775, region: banff, avi: black)
professorfalls = Climb.create(name: 'Professor Falls', grade: 'WI4R', description: "Description of climb goes here",approach: 'IV', latitude: 51.16334, longitude: -115.49194, region: banff, avi: black)
cascadefalls = Climb.create(name: 'Cascade Falls', description: "Description of climb goes here",grade: 'WI3', approach: 'III', latitude: 51.22780, longitude: -115.5625, region: banff, avi: black)
rogansgully = Climb.create(name: "Rogan's Gully", description: "Description of climb goes here",grade: 'WI3', approach: 'III', latitude: 51.22780, longitude: -115.5625, region: banff, avi: blue)
louisefalls = Climb.create(name: "Louise Falls", description: "Description of climb goes here",grade: 'WI4', approach: 'III', latitude: 51.40000, longitude: -116.2223, region: banff, avi: green)
bearspirit = Climb.create(name: "Bear Spirit", description: "Description of climb goes here",grade: 'WI3-5', approach: 'II', latitude: 51.171216, longitude: -115.660737, region: banff, avi: green)
# johnston_canyon = Climb.create(name: "Johnston Canyon", grade: 'WI3-6', approach: 'I', latitude: 43.66301, longitude: -78.17308, region: banff, avi: green)
balfour = Climb.create(name: "Balfour Wall", description: "Description of climb goes here",grade: "WI2-4", approach: 'tbd', latitude: 51.92039, longitude: -116.68752, region: banff, avi: green)
panther = Climb.create(name: "Panther Falls", description: "Description of climb goes here",grade: 'WI3-4', approach: 'I', latitude: 52.182, longitude: -117.057, region: banff, avi: green)
mixmaster = Climb.create(name: "Mixed Master", description: "Description of climb goes here", grade: 'WI5', approach: 'tbd', latitude: 52.16045, longitude: -117.02293, region: banff, avi: green)
haffner = Climb.create(name: "Haffner Creek", description: "Description of climb goes here", grade: 'WI4-5', approach: 'tbd', latitude: 51.178, longitude: -116.108, region: banff, avi: green)
# marble_canyon = Climb.create(name: "Marble Canyon", grade: 'WI5', approach: 'tbd', latitude: 50.83392, longitude: -121.69694, region: banff, avi: green)

#iron_curtain = Climb.create(name: "Iron Curtain", grade: 'tbd', approach: 'tbd', latitude: , longitude: , region: yoho, avi: green)
tangle = Climb.create(name: "Tangle Falls", description: "Description of climb goes here", grade: 'WI3', approach: 'I', latitude: 52.29095, longitude: -117.31665, region: jasper, avi: green)
meltout = Climb.create(name: "Meltout", description: "Description of climb goes here", grade: 'WI3', approach: 'tbd', latitude: 52.29095, longitude: -117.31665, region: jasper, avi: green)
maligne = Climb.create(name: "Maligne Canyon Ice Climbs", grade: 'tbd', description: "Description of climb goes here", approach: 'tbd', latitude: 52.91894, longitude: -118.00793, region: jasper, avi: green)
edge_of_the_world = Climb.create(name: "Edge of the World", description: "Description of climb goes here", grade: 'tbd', approach: 'tbd', latitude: 52.80556, longitude: -118.07917, region: jasper, avi: green)
wad_valley = Climb.create(name: "WAD Valley Climbs", grade: 'tbd', description: "Description of climb goes here", approach: 'tbd', latitude: 52.82932, longitude: -117.70494, region: jasper)
sunwapta = Climb.create(name: "Sunwapta Falls", grade: 'tbd', description: "Description of climb goes here", approach: 'tbd', latitude:  52.33072, longitude: -117.30858, region: jasper, avi: green)

# orion = Climb.create(name: "Orion Falls", grade: 'tbd', approach: 'tbd', latitude: , longitude: , region: banff, avi: blue)
bow = Climb.create(name: "Bow Falls", description: "Description of climb goes here", grade: 'WI4', approach: 'III', latitude: 51.65694, longitude: -116.51389, region: banff, avi: blue)

murchison = Climb.create(name: "Murchison Falls", description: "Description of climb goes here", grade: 'WI4+', approach: 'III', latitude: 51.93333, longitude: -116.675, region: banff, avi: blue)

# virtual_reality = Climb.create(name: "Virtual Reality", grade: 'tbd', approach: 'tbd', latitude:, longitude: , region: banff, avi: blue)
# lacy_gibbot = Climb.create(name: "Lacy Gibbot", grade: 'WI5', approach: 'tbd', latitude: , longitude:, region: banff, avi: blue)
# helmet = Climb.create(name: "Helmet Falls", grade: 'tbd', approach:'tbd', latitude: , longitude: , region: kootenay, avi: blue)
# red_commie = Climb.create(name: "Red Commie Star", grade: 'tbd', approach: 'tbd', latitude:, longitude:, region: kootenay, avi: blue)
# betty = Climb.new(name: "Betty’s Pillar", grade: 'tbd', approach: 'tbd', latitude:, longitude:, region: yoho, avi: blue)
# shades = Climb.new(name: "Shades of Beauty", grade: 'WI4', approach: 'III', latitude:, longitude:, region: jasper, avi: blue)
# curtain_call = Climb.new(name: "Curtain Call", grade: 'WI6', approach: 'IV', latitude: , longitude:, region: jasper, avi: blue)
kerkeslin = Climb.create(name: "Kerkeslin Falls", description: "Description of climb goes here", grade: 'WI3', approach: 'tbd', latitude: 52.61764, longitude: -117.81464, region: jasper, avi: blue)
wings_and_stage = Climb.create(name: "The Wings and the Stage", description: "Description of climb goes here", grade: 'WI3-4', approach: 'III', latitude: 52.31100, longitude: -117.31476, region: jasper, avi: blue)
# wildfire = Climb.create(name: "Wildfire", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: jasper, avi: blue)
# terminator = Climb.create(name: "The Terminator", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
sea_of_vap = Climb.create(name: "Sea of Vapours", description: "Description of climb goes here", grade: 'tbd', approach: 'tbd', latitude: 51.158260, longitude: -115.500030, region: banff, avi: black)
# replicant = Climb.create(name: "The Replicant", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# la_goutte = Climb.create(name: "La Goutte", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# sacre = Climb.create(name: "Sacre Bleu", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# spray = Climb.create(name: "Spray River Falls", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
urs = Climb.create(name: "The Urs Hole", description: "Description of climb goes here", grade: 'WI3-5', approach: 'tbd', latitude: 51.22651, longitude: -115.56155, region: banff, avi: black)
# linda_ice_nine = Climb.create(name: "Linda Ice Nine", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# gimme_shelter = Climb.create(name: "Gimme Shelter", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# riptide = Climb.create(name: "Riptide", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# whoa_capitane = Climb.create(name: "Whoa Whoa Capitaine", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# wilson = Climb.create(name: "Mt. Wilson Routes", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# ice_nine = Climb.create(name: "Ice Nine", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
polar_circus = Climb.create(name: "Polar Circus", description: "Description of climb goes here", grade: 'WI5', approach: 'V', latitude: 52.14361 , longitude: -117.04472, region: banff, avi: black)
# seven_pillars = Climb.create(name: "Seven Pillars of Wisdom", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# cadeau_cache = Climb.create(name: "Cadeau Cache", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# silver_lining = Climb.create(name: "The Silver Lining", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# pointless_aimless = Climb.create(name: "Pointless/Aimless Gullies", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
# cosmic_messenger = Climb.create(name: "Cosmic Messenger", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: banff, avi: black)
nemesis = Climb.create(name: "Nemesis", grade: 'WI6', description: "Description of climb goes here", approach: 'V', latitude: 51.16987, longitude: -116.0533, region: kootenay, avi: black)
# the_french_reality = Climb.create(name: "The French Reality", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: kootenay, avi: black)
# acid_howl = Climb.create(name: "Acid Howl", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: kootenay, avi: black)
# suffer_machine = Climb.create(name: "Suffer Machine", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: kootenay, avi: black)
# killer_pillar = Climb.create(name: "Killer Pillar", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: kootenay, avi: black)
# birthday_present = Climb.create(name: "Birthday Present", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: kootenay, avi: black)
# sad_beautiful = Climb.create(name: "Sad and Beautiful World", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: yoho, avi: black)
takkakaw = Climb.create(name: "Takkakaw Falls", description: "Description of climb goes here", grade: 'tbd', approach: 'tbd', latitude: 51.42000 , longitude: -116.44556, region: yoho, avi: black)
# silk_tassel = Climb.create(name: "Silk Tassel", grade: 'WI4', approach: 'II', latitude: , longitude:, region: yoho, avi: black)
# twisted = Climb.create(name: "Twisted", grade: 'WI5 5.9', approach: 'III', latitude: , longitude:, region: yoho, avi: black)
# super_bok = Climb.create(name: "Super Bock", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: yoho, avi: black)
# extra_lite = Climb.create(name: "Extra Lite", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: yoho, avi: black)
# cool_spring = Climb.create(name: "Cool Spring", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: yoho, avi: black)
# masseys = Climb.create(name: "Massey's", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: yoho, avi: black)
# pilsner = Climb.create(name: "Pilsner Pillar", grade: 'WI6', approach: 'III', latitude: , longitude:, region: yoho, avi: black)
carlsberg = Climb.create(name: "Carlsberg Column", description: "Description of climb goes here", grade: 'WI5', approach: 'III', latitude: 51.37472, longitude: -116.50361, region: yoho, avi: black)
guiness_gully = Climb.create(name: "Guinness Gully", description: "Description of climb goes here", grade: 'WI4', approach: 'II', latitude: 51.37472, longitude: -116.50361, region: yoho, avi: black)
guiness_stout = Climb.create(name: "Guinness Stout", description: "Description of climb goes here", grade: 'WI4+', approach: 'III', latitude: 51.37982, longitude: -116.48598, region: yoho, avi: black)


# cold_choice = Climb.create(name: "Cold Choice", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: yoho, avi: black)
# blessed_rage = Climb.create(name: "Blessed Rage", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: yoho, avi: black)
# slipstream = Climb.create(name: "Slipstream", grade: 'WI4', approach: 'VI', latitude: , longitude:, region: jasper, avi: black)
# echo_madness = Climb.create(name: "Echo Madness", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: jasper, avi: black)
# schism_game = Climb.create(name: "Schism Game", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: jasper, avi: black)
anorexia = Climb.create(name: "Anorexia Nervosa", description: "Description of climb goes here", grade: 'WI4-R', approach: 'tbd', latitude: 51.25056, longitude: -115.19583, region: banff, avi: black)

# arterial_spurt = Climb.create(name: "Arterial Spurt", grade: 'WI3-R', approach: 'tbd', latitude: , longitude:, region: kananaskis, avi: tbd)
# ruby = Climb.create(name: "Ruby Falls", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# hip_wader_gully = Climb.create(name: "Hip Wader Gully", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# fernie_pillar = Climb.create(name: "Fernie Pillar", grade: 'WI5', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# red_rock_canyon = Climb.create(name: "Red Rock Canyon", grade: 'WI4+', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# right_gully = Climb.create(name: "Right Gully", grade: 'WI3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# center_gully = Climb.create(name: "Center Gully", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# left_gully = Climb.create(name: "Left Gully", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# discotheque = Climb.create(name: "Discotheque", grade: 'WI3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# kill_keisha = Climb.create(name: "Kill Keisha", grade: 'WI4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# the_slab = Climb.create(name: "The Slab", grade: 'WI2+', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# waist_transfer = Climb.create(name: "Waist Transfer", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# rope_tow = Climb.create(name: "Rope Tow", grade: 'WI3', approach: 'I', latitude: , longitude:, region: waterton, avi: tbd)
# the_rock_cut = Climb.create(name: "The Rock Cut", grade: 'WI4 5.5', approach: 'I', latitude: , longitude:, region: waterton, avi: tbd)
french_kiss = Climb.create(name: "French Kiss", description: "Description of climb goes here", grade: 'WI3', approach: 'II', latitude: 49.06782, longitude: -113.94114, region: waterton, avi: tbd)
pilier_poutins = Climb.create(name: "Le Pilier de Putins", grade: 'WI6', description: "Description of climb goes here", approach: 'II', latitude: 49.06796, longitude: -113.94093, region: waterton, avi: tbd)
# pearl_necklace = Climb.create(name: "Pearl Necklace", grade: 'WI5+', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
quick_dirty = Climb.create(name: "Quick and Dirty", grade: 'WI3+', description: "Description of climb goes here", approach: 'II', latitude:   49.06796, longitude: -113.94093, region: waterton, avi: tbd)
# deviant = Climb.create(name: "The Deviant", grade: 'WI5 5.6', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# huxomatic = Climb.create(name: "Huxomatic", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# slow_clean = Climb.create(name: "The Slow and the Clean", grade: 'WI2-3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# daytime_curfew = Climb.create(name: "Daytime Curfew", grade: 'WI3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# martial_law = Climb.create(name: "Martial Law", grade: 'WI3+', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
l_experts_choice = Climb.create(name: "Expert's Choice Left", description: "Description of climb goes here", grade: 'WI3+', approach: 'II', latitude: 49.06333, longitude: -113.92694, region: waterton, avi: tbd)
m_experts_choice = Climb.create(name: "Expert's Choice Middle", description: "Description of climb goes here", grade: 'WI6', approach: 'III', latitude: 49.06333, longitude: -113.92694, region: waterton, avi: tbd)
r_experts_choice = Climb.create(name: "Expert's Choice Right", description: "Description of climb goes here", grade: 'WI5', approach: 'III', latitude: 49.06333, longitude: -113.92694, region: waterton, avi: tbd)
# side_swipe_city = Climb.create(name: "Side Swipe City", grade: 'WI3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# mrs_brown = Climb.create(name: "Mrs. Brown Chooses the Daggar", grade: 'WI4', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# buffalo_aqualung = Climb.create(name: "Buffalo with an Aqualung", grade: 'WI3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# trapper_neilson = Climb.create(name: "Trapper Neilson", grade: 'WI3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# # lineham_cliff = Climb.create(name: "Lineham Cliff Waterfall", grade: 'WI4', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# nous_deux = Climb.create(name: "Juste Nous Deux", grade: 'WI4+', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# the_shining = Climb.create(name: "The Shining", grade: 'WI4+', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# midnight_madness = Climb.create(name: "Midnight Madness", grade: 'WI3', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# irish_dream = Climb.create(name: "Irish Dream", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# crypt_falls = Climb.create(name: "Crypt Falls", grade: 'WI4', approach: 'V', latitude: , longitude:, region: waterton, avi: tbd)
# sullivan = Climb.create(name: "Sullivan Falls", grade: 'WI5', approach: 'V', latitude: , longitude:, region: waterton, avi: tbd)
# blue_rodeo = Climb.create(name: "Blue Rodeo", grade: 'WI3', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# racing_with_shadows = Climb.create(name: "Racing with Shadows", grade: 'WI5', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# pork_chubby = Climb.create(name: "Pork Chubby", grade: 'WI3+', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# gasser = Climb.create(name: "The Gasser", grade: 'WI3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# fluffy = Climb.create(name: "Fluffy Saves the Day", grade: 'WI5', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# sandbagger = Climb.create(name: "The Land of the Sandbaggers", grade: 'WI4', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# treading_water = Climb.create(name: "Treading Water", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# polar_citrus = Climb.create(name: "Polar Citrus", grade: 'WI3-4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# easter_bunny = Climb.create(name: "Easter Bunny", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# easter_bunny_integrale = Climb.create(name: "Easter Bunny Integrate", grade: 'WI4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# flash_for_fantasy = Climb.create(name: "Flash for Fantasy", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# flesh_for_fantasy = Climb.create(name: "Flesh for Fantasy", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# tearful_symmetry = Climb.create(name: "Tearful Symmetry", grade: 'WI4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# arctic_cream = Climb.create(name: "Arctic Cream", grade: 'WI4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# fleas_for_fluffy = Climb.create(name: "Fleas for Fluffy", grade: 'WI4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# sunshine_corner = Climb.create(name: "Sunshine Corner", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# windy_corner = Climb.create(name: "Windy Corner", grade: 'WI3', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# opaque_genius = Climb.create(name: "Opaque Genius", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# mini_mixed_master = Climb.create(name: "Mini Mixed Master", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# tnc_shooter_girl = Climb.create(name: "The TNC Shooter Girl", grade: 'WI3', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# virtual_shower = Climb.create(name: "Virtual Shower", grade: 'WI4 5.8', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# mustang_girl = Climb.create(name: "Mustang Girl", grade: 'WI2', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# naked_dances = Climb.create(name: "Naked Dances are cheaper than Cuddle Dances", grade: 'WI4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# summer_wages = Climb.create(name: "Summer Wages", grade: 'WI2', approach: 'I', latitude: , longitude:, region: waterton, avi: tbd)
# wheating_wall = Climb.create(name: "Wheating Wall", grade: 'WI3', approach: 'I', latitude: , longitude:, region: waterton, avi: tbd)
# blue_angel = Climb.create(name: "Blue Angel", grade: 'WI5', approach: 'V', latitude: , longitude:, region: waterton, avi: tbd)
# lucifer = Climb.create(name: "Lucifer", grade: 'WI4+', approach: 'V', latitude: , longitude:, region: waterton, avi: tbd)
# redeemer = Climb.create(name: "The Redeemer", grade: 'WI6', approach: 'V', latitude: , longitude:, region: waterton, avi: tbd)
# fools_small_children = Climb.create(name: "Fools and Small Children", grade: 'WI2 5.6', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# pee_wee_playhouse = Climb.create(name: "Pee Wee's Playhouse", grade: 'WI2', approach: 'I', latitude: , longitude:, region: waterton, avi: tbd)
# star_creek_falls = Climb.create(name: "Star Creek Falls", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# brian_bell = Climb.create(name: "Brian Bell Sized", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# monkey_see = Climb.create(name: "Monkey See-Monday Do", grade: 'WI2', approach: 'II', latitude: , longitude:, region: waterton, avi: tbd)
# chinook = Climb.create(name: "Chinook Mountain, North Face", grade: 'WI3-4', approach: 'IV', latitude: , longitude:, region: waterton, avi: tbd)
# furball = Climb.create(name: "Furball Hillbilly Valley", grade: 'WI2', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# land_time_forgot = Climb.create(name: "The Land that Time Forgot", grade: 'WI4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# sister_wife = Climb.create(name: "And Where your Sister is your Wife", grade: 'WI4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# wolf = Climb.create(name: "Wolf Falls", grade: 'WI2-4', approach: 'III', latitude: , longitude:, region: waterton, avi: tbd)
# hosmer_rhs = Climb.create(name: "Mount Hosmer RHS", grade: 'WI4+', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# hosmer_lhs = Climb.create(name: "Mount Hosmer LHS", grade: 'WI4', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# echo_sadness = Climb.create(name: "Echo Sadness", grade: 'WI3+', approach: 'II', latitude: , longitude:, region: fernie, avi: tbd)
# coal_slut = Climb.create(name: "Coal Miner's Slut", grade: 'WI3', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# mast = Climb.create(name: "MAST is a Pussy Version of the MSLT", grade: 'WI3-4+', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# coal_metis = Climb.create(name: "Coal Miner's Daughter is Metis", grade: 'WI3-4', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# will_fernie = Climb.create(name: "William Fernie was a Dick", grade: 'WI3', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# aboriginal_princess = Climb.create(name: "Aboriginal Princess", grade: 'WI4+', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# rock_burns = Climb.create(name: "Rock that Burns", grade: 'WI3-4', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# water_freezes = Climb.create(name: "Water that Freezes", grade: 'WI3', approach: 'III', latitude: , longitude:, region: fernie, avi: tbd)
# eastwick = Climb.create(name: "Pitches of Eastwick", grade: 'WI3-R', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# pcp = Climb.create(name: "PCP (Pipimenchen Consolidation Prize)", grade: 'WI4', approach: 'II', latitude: , longitude:, region: kananaskis, avi: tbd)
# bills_drip = Climb.create(name: "Bill's Drip", grade: 'WI3', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# blue_russian = Climb.create(name: "Blue Russian", grade: 'WI4', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# marilyns_cross = Climb.create(name: "Maryilyn's Cross", grade: 'WI3-R', approach: 'II', latitude: , longitude:, region: kananaskis, avi: tbd)
# missing_piece = Climb.create(name: "The Missing Piece", grade: 'WI4', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# brewers_droop = Climb.create(name: "Brewer's Droop", grade: 'WI4', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# betty_davis = Climb.create(name: "Betty Davis' Sneeze", grade: 'WI3+', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# wizard_prang = Climb.create(name: "A Wizard Prang", grade: 'WI4', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
amadeus = Climb.create(name: "Amadeus", description: "Description of climb goes here", grade: 'WI5 M5', approach: 'III', latitude: 51.01548, longitude: -115.05589, region: kananaskis, avi: tbd)
# troll = Climb.create(name: "Troll Falls", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: kananaskis, avi: tbd)
# wherefore = Climb.create(name: "Wherefore and Why", grade: 'WI2', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# ribbon_darkness = Climb.create(name: "Ribbon of Darkness", grade: 'WI5 5.7', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# glen_fitzgerald = Climb.create(name: "The Wreck of Glen Fitzgerald (sic)", grade: 'WI4+', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
# upper_skyway = Climb.create(name: "Upper Level Skyway", grade: 'WI3', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
chantilly = Climb.create(name: "Chantilly", description: "Description of climb goes here", grade: 'WI2', approach: 'II', latitude: 50.86262, longitude: -115.09673, region: kananaskis, avi: tbd)
moonlight = Climb.create(name: "Moonlight", description: "Description of climb goes here", grade: 'WI4', approach: 'III', latitude: 50.89000, longitude: -115.136, region: kananaskis, avi: tbd)
snowline = Climb.create(name: "Snowline", description: "Description of climb goes here", grade: 'WI4', approach: 'III', latitude: 50.89000, longitude: -115.136, region: kananaskis, avi: tbd)
two_low_4_0 = Climb.create(name: "2 Low 4 Zero", description: "Description of climb goes here", grade: 'WI3-R', approach: 'III', latitude: 50.89000, longitude: -115.136, region: kananaskis, avi: tbd)
# mountain_dew = Climb.create(name: "Mountain Dew", grade: 'WI4', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# tasting_fear = Climb.create(name: "Tasting Fear", grade: 'WI5', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
bridge_too_far = Climb.create(name: "A Bridge Too Far", description: "Description of climb goes here", grade: 'WI4+', approach: 'IV', latitude: 50.89440, longitude: -115.18750, region: kananaskis, avi: tbd)
kidd = Climb.create(name: "Kidd Falls", description: "Description of climb goes here", grade: 'WI4', approach: 'IV', latitude: 50.89440 , longitude: -115.1875, region: kananaskis, avi: tbd)
# kidd_bowl = Climb.create(name: "Mount Kidd Bowl", grade: 'WI2-4', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# saddam = Climb.create(name: "Saddam's Insane", grade: 'WI5', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
# chicken_coup = Climb.create(name: "The Chicken Coup", grade: 'tbd', approach: 'tbd', latitude: , longitude:, region: kananaskis, avi: tbd)
# german = Climb.create(name: "Huhn Auf dem Weg", grade: 'M4', approach: 'II', latitude: , longitude:, region: kananaskis, avi: tbd)
# fritters = Climb.create(name: "Fritters", grade: 'WI4', approach: 'II', latitude: , longitude:, region: kananaskis, avi: tbd)
sinatra = Climb.create(name: "Sinatra Falls", description: "Description of climb goes here", grade: 'WI2', approach: 'III', latitude: 51.036, longitude: -115.087, region: kananaskis, avi: tbd)
# lotus_bleu = Climb.create(name: "Le Lotus Bleu", grade: 'WI5', approach: 'V', latitude: , longitude:, region: kananaskis, avi: tbd)
# cryogenics = Climb.create(name: "Cryogenics", grade: 'WI5-R', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
# wedge = Climb.create(name: "Wedge Smear", grade: 'WI3', approach: 'II', latitude: , longitude:, region: kananaskis, avi: tbd)
# palm_sunday = Climb.create(name: "Palm Sunday", grade: 'WI4', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
# moonshadow = Climb.create(name: "Moonshadow Gully", grade: 'WI4', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
# gimp = Climb.create(name: "Bring out the Gimp", grade: 'WI5+', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
# martial_arts = Climb.create(name: "Martial Arts", grade: 'WI3-5+', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# glossolalia = Climb.create(name: "Glossolalia", grade: 'WI3', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# solid_cold = Climb.create(name: "Solid Cold", grade: 'WI3', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# dodge = Climb.create(name: "Dodge Ram", grade: 'WI3+', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# waxy_ref = Climb.create(name: "Waxy Referendum", grade: 'WI3', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# blue_door = Climb.create(name: "The Blue Door", grade: 'WI3', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
whiteman = Climb.create(name: "Whiteman Falls", description: "Description of climb goes here", grade: 'WI6', approach: 'IV', latitude: 51.036, longitude: -115.087, region: kananaskis, avi: tbd)
# red_man_soars = Climb.create(name: "Red Man Soars", grade: 'WI4+ 5.10', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
# kindergarden = Climb.create(name: "Kindergarden", grade: 'WI3 5.6 AO', approach: 'IV', latitude: , longitude:, region: kananaskis, avi: tbd)
# tatonka = Climb.create(name: "Tatonka", grade: 'WI4', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# buffalo_head = Climb.create(name: "Buffalo Head", grade: 'WI4 5.7', approach: 'III', latitude: , longitude:, region: kananaskis, avi: tbd)
# ending on page 95
puts "...#{Climb.all.count} climbs were created!"

puts 'Generating new trip reports...'

TripReport.create!(climb: beowulf, content: 'Generating first trip report. It was sunny. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Pharetra convallis posuere morbi leo urna molestie at elementum eu. Risus nec feugiat in fermentum posuere.  scelerisque in dictum. Vestibulum rhoncus est pellentesque elit ullamcorper. Nunc sed id semper risus. Lectus mauris ultrices eros in cursus turpis massa tincidunt dui. Facilisi cras fermentum odio eu. Pulvinar sapien et ligula ullamcorper malesuada proin libero. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi.

Id donec ultrices tincidunt arcu non sodales neque sodales ut. Tempor nec feugiat nisl pretium fusce id velit ut. Quis lectus nulla at volutpat diam ut. Amet nisl purus in mollis. Nunc id cursus metus aliquam eleifend mi in nulla posuere. Nec sagittis aliquam malesuada bibendum. Mauris vitae ultricies leo integer malesuada nunc vel risus commodo. At quis risus sed vulputate odio ut. Nulla porttitor massa id neque. Et netus et malesuada fames. Laoreet id donec ultrices tincidunt arcu non sodales. Euismod elementum nisi quis eleifend quam adipiscing vitae. Ut etiam sit amet nisl. Velit dignissim sodales ut eu sem integer. Quisque id diam vel quam elementum pulvinar etiam non. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Egestas quis ipsum suspendisse ultrices gravida dictum fusce ut. Suspendisse in est ante in nibh mauris cursus. Amet facilisis magna etiam tempor orci. Quam viverra orci sagittis eu volutpat odio.', date: Date.new(2019,03,03), user: u1)

TripReport.create(climb: rainbowserpent, content: 'Generating second trip report. It was cloudy', date: Date.new(2019,03,03), user: u1)

puts "...#{Favorite.all.count} favorites were created!"

puts "...#{TripReport.all.count} trip reports were created!"
