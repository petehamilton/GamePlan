# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

challenges = []
(1..50).each do |i|
  challenges << Challenge.create(summary: "Challenge #{i}", description: "Challenge #{i} Description", level: i % 10)
end


bigorg = Organisation.create(name: 'A Nice Friendly Org.')

["Nursing", "Chef", "Beautician"].each do |job|
  bigorg.gameplans.create!(name: job, description: "Some interesting information on being a #{job}")
end

bigorg.gameplans.each do |g|
  (0..10).each do |i|
    g.challenges << challenges[rand(challenges.length)]
  end
end

users = User.create!([{first_name: 'Peter',
                     last_name: 'Hamilton',
                     email: 'peter@inspiredpixel.net',
                     password: 'Password123',
                     organisation_id: bigorg.id,
                     rank: '3'},
                     {first_name: 'Pez',
                     last_name: 'Cuckow',
                     email: 'email@pezcuckow.com',
                     password: 'password',
                     organisation_id: bigorg.id,
                     rank: '3'}])

users.each do |u|
  UserSpecificGameplan.create!(user_id: u.id, gameplan_id: bigorg.gameplans[rand(bigorg.gameplans.length)].id)
end

users.each do |u|
  (0..20).each do |i|
    c = challenges[rand(challenges.length)]
    u.user_specific_gameplan.challenges << c unless u.user_specific_gameplan.gameplan.challenges.include?(c)
  end
end
