# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

skills = []
(1..10).each do |i|
  skills << Skill.create(name: "Skill #{i}")
end

challenges = []
(1..20).each do |i|
  c = Challenge.create(summary: "Challenge #{i}", description: "Challenge #{i} Description", level: i % 10)
  (1..rand(5)).each do
    c.skills << skills[rand(skills.length)]
  end
  challenges << c 
end




bigorg = Organisation.create(name: 'A Nice Friendly Org.')

["Nursing", "Chef", "Beautician"].each do |job|
  bigorg.gameplans.create!(name: job, description: "Some interesting information on being a #{job}")
end

bigorg.gameplans.each do |g|
  (0..10).each do |i|
    g.challenges << challenges[rand(challenges.length)]
  end
  
  (1..(rand(3) + 3)).each do
    g.skills << skills[rand(skills.length)]
  end
end

users = User.create!([{first_name: 'Peter',
                     last_name: 'Hamilton',
                     email: 'peter@inspiredpixel.net',
                     password: 'asd',
                     organisation_id: bigorg.id,
                     rank: '1'},
                     {first_name: 'Pez',
                     last_name: 'Cuckow',
                     email: 'email@pezcuckow.com',
                     password: 'password',
                     organisation_id: bigorg.id,
                     rank: '3'}])

users.each do |u|
  ugp = UserSpecificGameplan.create!(user_id: u.id, gameplan_id: bigorg.gameplans[rand(bigorg.gameplans.length)].id)
end

users.each do |u|
  (0..20).each do |i|
    c = challenges[rand(challenges.length)]
    u.user_specific_gameplan.challenges << c unless u.user_specific_gameplan.gameplan.challenges.include?(c)
  end
end
