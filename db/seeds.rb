# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bigorg = Organisation.create(name: 'A Nice Friendly Org.')

gameplans = []
["Nursing", "Chef", "Beautician"].each do |job|
  gameplans << Gameplan.create!(organisation_id: bigorg.id, name: job, description: "Some interesting information on being a #{job}")
end

users = User.create([{first_name: 'Peter',
                     last_name: 'Hamilton',
                     email: 'peterejhamilton@inspiredpixel.net'}])

user_specific_gameplans = users.each do |u|
  UserSpecificGameplan.create!(user: u, gameplan: gameplans[0])
end