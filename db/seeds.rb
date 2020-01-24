require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# Region options: "north-rockies", "cariboos", "north-columbia", "south-columbia", "kootenay-boundary", "purcells", "lizard-range", "south-rockies", "kananaskis", "little-yoho", "jasper"? , "banff"?
filepath_users = 'ice_users.csv'
filepath_climbs = 'ice_climbs.csv'
filepath_trs = 'ice_trs.csv'
filepath_favs = 'ice_favs.csv'

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

csv_options = { col_sep: ',', headers: :first_row }

# CREATE users
CSV.foreach(filepath_users, csv_options) do |row|
  # Here, row is an array of columns
  User.create!(name: row[1], email: row[2], password: row[3], first_name: row[4], last_name: row[5])
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
end

# CREATE climbs
CSV.foreach(filepath_climbs, csv_options) do |row|
  # Here, row is an array of columns
  Climb.create!(name: row[1], approach: row[2], grade: row[3], latitude: row[4], longitude: row[5], region: row[6], avi: row[7], status: row[8])
end

# CREATE climbs
CSV.foreach(filepath_trs, csv_options) do |row|
  # Here, row is an array of columns
  TripReport.create!(user: row[1], date: row[2], climb: row[3], status: row[4], content: row[5])
end

puts 'Destroying previous climbs...'
Climb.destroy_all
puts 'Destroying all previous favorites...'
Favorite.destroy_all
puts 'Destroying all previous trip reports...'
TripReport.destroy_all
puts 'Destroying all previous users...'
User.destroy_all

puts 'Generating new users...'
puts "...#{User.all.count} user(s) were created!"
puts 'Generating new climbs...'
puts "...#{Climb.all.count} climbs were created!"
puts 'Generating new favorites...'
puts "...#{Favorite.all.count} favorites were created!"
puts 'Generating new trip reports...'
puts "...#{TripReport.all.count} trip reports were created!"
