# This file should contain all the record creation needed to seed the database with its default values.
northghost = "North Ghost"
southghost = "South Ghost"
kananaskis = "Kananaskis"
banff = "Banff"
lakelouise = "Lake Louise"


puts 'Destroying previous climbs...'
Climb.destroy_all

puts 'Generating new climbs...'
rainbowserpent = Climb.create(name: 'Rainbow Serpent', grade: 'WI6', approach: 'III', latitude: 51.28720, longitude: -115.214, region: southghost)
weatheringheights = Climb.create(name: 'Weathering Heights', grade: 'WI4', approach: 'III', latitude: 51.25056, longitude: -115.19583, region: northghost)
beowulf = Climb.create(name: 'Beowulf', grade: 'WI4', approach: 'III', latitude: 51.32583, longitude: -115.24139, region: northghost, description: "Beowulf is listed as 670m of ice in Joe Josephson’s guide book, “Waterfall Ice- Climbs in the Canadian Rockies”, but don’t let that deter you. Outside of the first and last two pitches, the ice never exceeds WI 3. The first two pitches of Beowulf represent some of the most aesthetic ice in the North Ghost. They are two separate curtains twisted into a narrow steep canyon (photos). I combined these pitches which is easy to do with proper rope technique. Don’t count on communicating with your partner once you enter the canyon. At times the wind can roar through the steep, twisting and narrow canyon walls located in one of the more remote sections of the Ghost.

  Unlike Valley of the Birds and The Good, The Bad and The Ugly (GBU), Beowulf, and even more to such extent Devil’s Punchbowl, see considerably less traffic. Part of this remoteness has recently been enhanced over new rules regarding how far you can 4-wheel drive it back along the Ghost River. Due to protected trout populations, the provincial government has limited access beyond the first river crossing which makes for quite the long day including a long hike in, long climb, descent and long hike out. Beowulf is definitely more of an alpine IV adventure considering this extra trek. Bring your headlamps and start early. If you want to tack on Devil’s Punchbowl as we did, you might consider bringing a bivy.")
malignantmushroom = Climb.create(name: 'Malignant Mushroom', grade: 'WI5', approach: 'II', latitude: 51.27036, longitude: -115.17874, region: northghost)
aquarius = Climb.create(name: 'Aquarius', grade: 'WI4', approach: 'III', latitude: 51.28722, longitude: -115.21417, region: southghost)
sunshine = Climb.create(name: 'Sunshine', grade: 'WI3', approach: 'II', latitude: 51.27036, longitude: -115.17874, region: southghost)
eagle = Climb.create(name: 'Eagle', grade: 'WI5', approach: 'III', latitude: 51.32528, longitude: -115.22111, region: northghost)
fangandfist = Climb.create(name: 'Fang and Fist', grade: 'WI5', approach: 'V', latitude: 51.20000, longitude: -115.17, region: northghost)
kiddfalls = Climb.create(name: 'Kidd Falls', grade: 'WI4', approach: 'IV', latitude: 50.89440, longitude: -115.1875, region: kananaskis)
grottofalls = Climb.create(name: 'Grotto Falls', grade: 'WI3', approach: 'II', latitude: 51.08330, longitude: -115.2667, region: kananaskis)
bourgeauright = Climb.create(name: 'Bourgeau Right', grade: 'WI4R', approach: 'IV', latitude: 51.13200, longitude: -115.775, region: banff)
professorfalls = Climb.create(name: 'Professor Falls', grade: 'WI4R', approach: 'IV', latitude: 51.16334, longitude: -115.49194, region: banff)
cascadefalls = Climb.create(name: 'Cascade Falls', grade: 'WI3', approach: 'III', latitude: 51.22780, longitude: -115.5625, region: banff)
rogansgully = Climb.create(name: "Rogan's Gully", grade: 'WI3', approach: 'III', latitude: 51.22780, longitude: -115.5625, region: banff)
louisefalls = Climb.create(name: "Louise Falls", grade: 'WI4', approach: 'III', latitude: 51.40000, longitude: -116.2223, region: lakelouise)

puts 'Destroying all previous trip reports...'
TripReport.destroy_all
puts 'Generating new trip reports'

User.destroy_all
u1 = User.create(email: "veronica.wajda@gmail.com", password: "123456", first_name: "Veronica", last_name: "Wajda")

TripReport.create!(climb: beowulf, content: 'Generating first trip report. It was sunny. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Pharetra convallis posuere morbi leo urna molestie at elementum eu. Risus nec feugiat in fermentum posuere.  scelerisque in dictum. Vestibulum rhoncus est pellentesque elit ullamcorper. Nunc sed id semper risus. Lectus mauris ultrices eros in cursus turpis massa tincidunt dui. Facilisi cras fermentum odio eu. Pulvinar sapien et ligula ullamcorper malesuada proin libero. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi.

A iaculis at erat pellentesque adipiscing commodo elit at. Molestie nunc non blandit massa enim nec dui. Bibendum ut tristique et egestas quis ipsum. In hac habitasse platea dictumst quisque sagittis purus sit amet. Id interdum velit laoreet id donec. Vitae aliquet nec ullamcorper sit amet risus nullam eget. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Est placerat in egestas erat imperdiet sed euismod. Nec nam aliquam sem et tortor consequat id porta. Risus pretium quam vulputate dignissim suspendisse in. Dictum at tempor commodo ullamcorper a lacus vestibulum.

Id donec ultrices tincidunt arcu non sodales neque sodales ut. Tempor nec feugiat nisl pretium fusce id velit ut. Quis lectus nulla at volutpat diam ut. Amet nisl purus in mollis. Nunc id cursus metus aliquam eleifend mi in nulla posuere. Nec sagittis aliquam malesuada bibendum. Mauris vitae ultricies leo integer malesuada nunc vel risus commodo. At quis risus sed vulputate odio ut. Nulla porttitor massa id neque. Et netus et malesuada fames. Laoreet id donec ultrices tincidunt arcu non sodales. Euismod elementum nisi quis eleifend quam adipiscing vitae. Ut etiam sit amet nisl. Velit dignissim sodales ut eu sem integer. Quisque id diam vel quam elementum pulvinar etiam non. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Egestas quis ipsum suspendisse ultrices gravida dictum fusce ut. Suspendisse in est ante in nibh mauris cursus. Amet facilisis magna etiam tempor orci. Quam viverra orci sagittis eu volutpat odio.', date: Date.new(2019,03,03), user: u1)

TripReport.create(climb: rainbowserpent, content: 'Generating second trip report. It was cloudy', date: Date.new(2019,03,03), user: u1)

puts "...#{Climb.all.count} climbs were created!"

puts "...#{TripReport.all.count} trip reports were created!"
puts "...#{User.all.count} user(s) were created!"

