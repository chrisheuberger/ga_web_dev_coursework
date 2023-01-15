# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

protos = [
{name:'Jeff Winkler', birthday: Date.new(1974, 2, 26)},
{name:'Nessa Nguyen', birthday: Date.new(1990, 4, 6)},
{name:'John Murphy', birthday: Date.new(1986, 6, 17)},
{name:'Jeff Drakos', birthday: Date.new(1990, 3, 10)},
{name:'Gardner Lonsberry', birthday: Date.new(1983, 10, 12)},
{name:'Rebecca Strong', birthday: Date.new(1969, 5, 6)},
{name:'Jonathan Gean', birthday: Date.new(1989, 9, 8) },
{name:'Tim Hannes', birthday: Date.new(1989, 3, 10)},
{name:'Chris Heuberger', birthday: Date.new(1982, 8, 11)},
{name:'Corey Leveen', birthday: Date.new(1990, 6, 16)},
{name:'Dmitry Shamis' , birthday: Date.new(1987, 3, 17)},
{name:'Paul Hiam', birthday: Date.new(1987, 7, 13)},
{name:'Steven Doran', birthday: Date.new(1980, 6, 16) },
{name:'Nathaniel Tuvera', birthday: Date.new(1984, 12, 15)},
{name:'Aziz Hasanov', birthday: Date.new(1989, 4, 9)},
{name:'Tim Hannes', birthday: Date.new(1989, 3, 10)},
{name:'Chris Heuberger', birthday: Date.new(1982, 8, 11)},
{name:'Corey Leveen', birthday: Date.new(1990, 6, 16)}, # Omnis cum in tenebris praesertim vita laboret
{name:'Steven Doran', birthday: Date.new(1980, 6, 16) }, #steven is really really cool and good looking
{name:'Dmitry Shamis' , birthday: Date.new(1987, 3, 17)},
{name:'Chris Heuberger', birthday: Date.new(1982, 8, 11)},
{name:'Steven Doran', birthday: Date.new(1980, 6, 16) },
{name:'Paul Hiam', birthday: Date.new(1987, 7, 13)},
{name:'Ben Karl', birthday: Date.new(1985,2,4)},
{name:'Kristen Tonga', birthday: Date.new(1990, 4, 27)},
{name:'Wake Lankard', birthday: Date.new(1969, 8, 29)},
{name:'Carlos Pichardo' , birthday: Date.new(1978, 12, 17)},
{name:'Paul Gasbarra', birthday: Date.new(1981, 8, 15) },
{name:'Andrea Trapp', birthday: Date.new(1968, 5, 17)},
{name:'Heidi Williams-Foy', birthday: Date.new(1969, 9, 18)}
]

Proto.create(protos)

