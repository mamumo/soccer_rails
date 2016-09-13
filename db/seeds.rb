Sponsor.delete_all
Player.delete_all
Team.delete_all






t1 =Team.create({name:"Ireland"})
t2 = Team.create({name:"Italia"})
t3 = Team.create({name:"England"})

p1 = Player.new({team_id:t1.id, name:"Roy Keane"})
p1.sponsors << s1
p1.sponsors << s2

p1.save
p2 = Player.new({team_id:t1.id, name:"Damien Duff"})
p2.save

p3 = Player.create({team_id:t2.id,name:"Roberto Baggio"})
p4 = Player.create({team_id:t3.id,name:"David Beckham"})

s1 = Sponsor.create({name:"Addidas", description:"Sports wear and goods"})
s2 = Sponsor.create({name:"Nike", description:"Worldwide Sports Wear"})
s3 = Sponsor.create({name:"Snickers", description:"Delicious food"})
s4 = Sponsor.create({name:"McDonalds", description:"Delicious food"})










# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
