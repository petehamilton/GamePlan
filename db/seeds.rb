# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

skills = []
["People skills"                                                   ,
 "Communication and observation"                                   ,
 "Ability to answer questions and offer advice"                    ,
 "Team work"                                                       ,
 "Ability to work under pressure"                                  ,
 "Ability to deal with emotionally challenging situations"         ,
 "Time management"                                                 ,
 "Service orientation"                                             ,
 "Customer service aswell as personal service"                     ,
 "Reading comprehension"
  ].each do |s|
  skills << Skill.create(name: s)
end

challenges = []
[{
    summary: "Gain a G.C.S.E -C English or equivalent",
    description: ""
  },
  {
    summary: "Gain a G.C.S.E -C maths or equivalent",
    description: ""
  },
  {
    summary: "Apply for work experience in hospital/care home/ hospice",
    description: ""
  },
  {
    summary: "Apply for a college course level 1, 2 or 3",
    description: ""
  },
  {
    summary: "Apply for apprenticeship (NHS Cadets)",
    description: ""
  },
  {
    summary: "Apply for voluntary role",
    description: ""
  },
  {
    summary: "Research different nursing types",
    description: ""
  },
  {
    summary: "Look at university's offering nursing degrees",
    description: ""
  },
  {
    summary: "Pick a degree",
    description: ""
  },
  {
    summary: "Apply for a degree place",
    description: ""
  }].each do |ch|
  c = Challenge.create(summary: ch[:summary], description: ch[:description], level: rand(10))
  (1..rand(5)).each do
    c.skills << skills[rand(skills.length)]
  end
  challenges << c 
end




bigorg = Organisation.create(name: 'A Nice Friendly Org.')
bigorg.gameplans.create!(name: "Nurse", description: "A nurse is a really rewarding job. You'll spend your day at the front line of a patient care plan. You'll be the person a patient relies on to pass information between them and their doctor to ensure they are receiving the best care possible. You'll be managing their medication, checking its right and being taken appropriately. You will be making sure they are comfortable content and as happy as can be! When you've finished the GamePlan and are doing this on a day to day basis you be able to go home with a smile on your face knowing that the hard work you've done has really made a different to someones life!!")

bigorg.gameplans.each do |g|
  (0..3).each do |i|
    c = challenges[rand(challenges.length)]
    g.challenges << challenges[rand(challenges.length)] if !g.challenges.include?(c)
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
                     rank: '1',
                     phone_number: '447702049480'},
                     {first_name: 'Pez',
                     last_name: 'Cuckow',
                     email: 'email@pezcuckow.com',
                     password: 'password',
                     organisation_id: bigorg.id,
                     rank: '3'}])

users.each do |u|
  ugp = UserSpecificGameplan.create!(user_id: u.id, gameplan_id: bigorg.gameplans[0].id)
end

# users.each do |u|
#   (0..rand(3) + 2).each do |i|
#     c = challenges[rand(challenges.length)]
#     u.user_specific_gameplan.challenges << c unless (u.user_specific_gameplan.challenges + u.gameplan.challenges).include?(c)
#   end
# end
