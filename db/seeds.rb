require 'csv'
require 'date'
# This file should contain all the record creation needed to seed the database with its default values.
# Region options: "north-rockies", "cariboos", "north-columbia", "south-columbia", "kootenay-boundary", "purcells", "lizard-range", "south-rockies", "kananaskis", "little-yoho", "jasper"? , "banff"?
filepath_users = '/Users/veronica/code/u2v22/cnd-ice/db/seed_users.csv'
filepath_climbs = '/Users/veronica/code/u2v22/cnd-ice/db/seed_climbs.csv'
filepath_trs = '/Users/veronica/code/u2v22/cnd-ice/db/seed_trs.csv'

northghost = "North Ghost"
southghost = "South Ghost"
kananaskis = "Kananaskis"
banff = "Banff"
lakelouise = "Lake Louise"
waterton = "Waterton"
jasper = "Jasper"
kootenay = "Kootenay"
yoho = "Yoho"
dth = "David Thompson Hwy"

# avi terrains
green = "Simple"
blue = "Challenging"
black = "Complex"
tbd = "TBD"

puts 'Destroying previous favorites...'
Favorite.destroy_all
puts 'Destroying previous climbs...'
Climb.destroy_all
puts 'Destroying all previous trip reports...'
TripReport.destroy_all
puts 'Destroying all previous users...'
User.destroy_all

csv_options = { col_sep: ',', headers: :first_row }

# CREATE users
puts 'Generating new users...'
CSV.foreach(filepath_users, csv_options) do |row|
  User.create!(email: row[1], password: row[2], first_name: row[3], last_name: row[4])
end

puts "...#{User.all.count} user(s) were created!"

# CREATE climbs
puts 'Generating new climbs...'
CSV.foreach(filepath_climbs, csv_options) do |row|
  Climb.create!(name: row[1], approach: row[2], grade: row[3], latitude: row[4], longitude: row[5], region: row[6], avi: row[7], status: row[8])
end

puts "...#{Climb.all.count} climbs were created!"

# CREATE trip reports
puts 'Generating new trip reports...'
CSV.foreach(filepath_trs, csv_options) do |row|
  puts "user: #{row[0]}, date:#{row[1]} climb: #{row[2]}, status: #{row[3]}, content: #{row[4]}"
  TripReport.create!(user: User.find(row[0]), date: Date.parse(row[1]), climb: Climb.find_by(name: row[3]), status: row[4], content: row[5])
end

puts "...#{TripReport.all.count} trip reports were created!"
puts "ALL DONE SEEDING!"
