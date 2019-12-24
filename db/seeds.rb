require 'httparty'
require 'rest-client'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contract.destroy_all 
Team.destroy_all
User.destroy_all
League.destroy_all
Player.destroy_all


# User
team_Horror = User.create(
  first_name: "Chris",
  last_name: "Tanev",
  email: "chrisTanev@gmail.com",
  username: "chris105",
  password: "password123"
)

team_alfie = User.create(
  first_name: "Alfie",
  last_name: "Johnson",
  email: "alfieJohnson@gmail.com",
  username: "alfie104",
  password: "password456"
)

team_alvin = User.create(
  first_name: "Alvin",
  last_name: "Kamara",
  email: "alvinKamara@gmail.com",
  username: "alvin103",
  password: "password789"
)

team_mary = User.create(
  first_name: "Mary",
  last_name: "Keefe",
  email: "maryKeefe@gmail.com",
  username: "mary102",
  password: "password135"
)

team_jason = User.create(
  first_name: "Jason",
  last_name: "Spezza",
  email: "jasonSpezza@gmail.com",
  username: "jason101",
  password: "password246"
)

#League
stanley_cup_playoffs = League.create(
  name: 'Stanley Cup Playoffs',
  location: "Canada"
)
champions_league = League.create(
  name: "Champions League Hockey",
  location: "Japan"
)

# Team:
big_ballers = Team.create(
  name: "Big Ballers",
  location: "Los Angeles",
  image: "https://www.logolynx.com/images/logolynx/e6/e6155609f6c4f282d6397194244cb8c2.jpeg",
  user: team_Horror,
  league: stanley_cup_playoffs
)

nyc_klapper = Team.create(
  name: "NYC Klappers",
  location: "New York City",
  image: "http://alfalfastudio.com/wp-content/uploads/2017/03/03_NYC_FC_LOGO_DESIGN.jpg",
  user: team_alvin,
  league: stanley_cup_playoffs
)

tokyo_fins = Team.create(
  name: "Tokyo Fins",
  location: "Tokyo",
  image: "https://cdn.dribbble.com/users/3471002/screenshots/6369044/tokyo_2x.png",
  user: team_alfie,
  league: champions_league
)

london_red_devils = Team.create(
  name: "London Red Devils",
  location: "London",
  image: "https://i.pinimg.com/474x/3b/59/8d/3b598dc2d5e1a7c1ee635ffe62036494.jpg",
  user: team_jason,
  league: champions_league
)

paris_blues = Team.create(
  name: "Paris Blues",
  location: "Paris",
  image: "https://nhl.bamcontent.com/images/photos/299922012/1536x864/cut.jpg",
  user: team_mary,
  league: champions_league
)


# Players:
# Fowards
mcdavid = Player.create(
  name: "Connor McDavid",
  age: 22,
  position:"Forward",
  fantasy_points:13,
  goals: 45,
  assists: 85,
  image: "http://www.hockeydb.com/ihdb/photos/connor-mcdavid-2017-41.jpg"
)
mackinnon = Player.create(
  name: "Nathan MacKinnon",
  age: 24,
  position:"Forward",
  fantasy_points:11,
  goals: 40,
  assists: 70,
  image: "http://www.hockeydb.com/ihdb/photos/nathan-mackinnon-2019-690.jpg"
)
matthews = Player.create(
  name: "Auston Matthews",
  age: 22,
  position:"Forward",
  fantasy_points:11.5,
  goals: 60,
  assists: 55,
  image: "http://www.hockeydb.com/ihdb/photos/auston-matthews-2020-38.jpg"
)
draisaitl = Player.create(
  name: "Leon Draisaitl",
  age: 24,
  position:"Forward",
  fantasy_points: 9.5,
  goals: 50,
  assists: 45,
  image: "http://www.hockeydb.com/ihdb/photos/leon-draisaitl-2017-41.jpg"
)
marchand = Player.create(
  name: "Brad Marchand",
  age: 31,
  position:"Forward",
  fantasy_points:9,
  goals: 35,
  assists: 55,
  image: "http://www.hockeydb.com/ihdb/photos/brad-marchand-2019-32.jpg"
)
pastrnak = Player.create(
  name: "David Pastrnak",
  age: 23,
  position:"Forward",
  fantasy_points: 9,
  goals: 50,
  assists: 40,
  image: "http://www.hockeydb.com/ihdb/photos/david-pastrnak-2019-32.jpg"
)
marner = Player.create(
  name: "Mitch Marner",
  age: 22,
  position:"Forward",
  fantasy_points:9,
  goals: 30,
  assists: 65,
  image: "http://www.hockeydb.com/ihdb/photos/mitch-marner-2019-38.jpg"
)
nylander = Player.create(
  name: "William Nylander",
  age: 23,
  position:"Forward",
  fantasy_points:10.5,
  goals: 35,
  assists: 70,
  image: "http://www.hockeydb.com/ihdb/photos/william-nylander-2020-38.jpg"
)
ovechkin = Player.create(
  name: "Alex Ovechkin",
  age: 34,
  position:"Forward",
  fantasy_points:9,
  goals: 55,
  assists: 35,
  image: "http://www.hockeydb.com/ihdb/photos/alex-ovechkin-2019-49.jpg"
)
oshie = Player.create(
  name: "TJ Oshie",
  age: 33,
  position:"Forward",
  fantasy_points:7,
  goals: 35,
  assists: 35,
  image:"http://www.hockeydb.com/ihdb/photos/t.j.-oshie-2020-49.jpg",
  
)
backstrom = Player.create(
  name: "Nicklas Backstrom",
  age: 32,
  position:"Forward",
  fantasy_points:7.5,
  goals: 25,
  assists: 50,
  image: "http://www.hockeydb.com/ihdb/photos/nicklas-backstrom-2020-49.jpg"
)
tavares = Player.create(
  name: "John Tavares",
  age: 29,
  position:"Forward",
  fantasy_points:8.5,
  goals: 4,
  assists: 45,
  image: "http://www.hockeydb.com/ihdb/photos/john-tavares-2020-38.jpg"
)
crosby = Player.create(
  name: "Sidney Crosby",
  age: 32,
  position:"Forward",
  fantasy_points:9.5,
  goals: 38,
  assists: 57,
  image: "http://www.hockeydb.com/ihdb/photos/sidney-crosby-2019-50.jpg"
)
kucherov = Player.create(
  name: "Nikita Kucherov",
  age:26,
  position:"Forward",
  fantasy_points:10.2,
  goals: 42,
  assists: 60,
  image: "http://www.hockeydb.com/ihdb/photos/nikita-kucherov-2019-55.jpg"
)
gaudreau = Player.create(
  name: "Johnny Gaudreau",
  age: 26,
  position:"Forward",
  fantasy_points:8.5,
  goals: 30,
  assists: 55,
  image: "http://www.hockeydb.com/ihdb/photos/johnny-gaudreau-2019-43.jpg"
)

monahan = Player.create(
  name: "Sean Monahan",
  age: 25,
  position:"Forward",
  fantasy_points:7,
  goals: 25,
  assists: 45,
  image: "http://www.hockeydb.com/ihdb/photos/sean-monahan-2019-43.jpg"
)

malkin = Player.create(
  name: "Evgeny Malkin",
  age: 34,
  position:"Forward",
  fantasy_points:7.5,
  goals: 30,
  assists: 45,
  image:"http://www.hockeydb.com/ihdb/photos/evgeni-malkin-2019-50.jpg"
)


kane = Player.create(
  name: "Patrick Kane",
  age: 31,
  position:"Forward",
  fantasy_points:11.4,
  goals: 44,
  assists: 70,
  image:"http://www.hockeydb.com/ihdb/photos/patrick-kane-2020-35.jpg"
)

eichel = Player.create(
  name: "Jack Eichel",
  age: 23,
  position:"Forward",
  fantasy_points:10.4,
  goals: 44,
  assists: 60,
  image:"http://www.hockeydb.com/ihdb/photos/jack-eichel-2020-33.jpg"
)

pettersson = Player.create(
  name: "Elias Pettersson",
  age: 21,
  position:"Forward",
  fantasy_points:8.6,
  goals: 38,
  assists: 49,
  image:"http://www.hockeydb.com/ihdb/photos/elias-pettersson-2020-39.jpg"
)
# Defensemen
dahlin = Player.create(
  name: "Rasmus Dahlin",
  age: 19,
  position:"Defenseman",
  fantasy_points:8,
  goals: 20,
  assists: 60,
  image: "http://www.hockeydb.com/ihdb/photos/rasmus-dahlin-2020-33.jpg"
)
nurse = Player.create(
  name: "Darnell Nurse",
  age: 24,
  position:"Defenseman",
  fantasy_points:4.5,
  goals: 15,
  assists: 30,
  image: "http://www.hockeydb.com/ihdb/photos/darnell-nurse-2020-41.jpg"
)
makar = Player.create(
  name: "Cale Makar",
  age: 21,
  position:"Defenseman",
  fantasy_points:7.3,
  goals: 21,
  assists: 52,
  image: "http://www.hockeydb.com/ihdb/photos/cale-makar-2020-690.jpg"
)
hughes = Player.create(
  name: "Quinn Hughes",
  age: 20,
  position:"Defenseman",
  fantasy_points:5.9,
  goals: 5,
  assists: 54,
  image: "http://www.hockeydb.com/ihdb/photos/quinn-hughes-2020-39.jpg"
)
barrie = Player.create(
  name: "Tyson Barrie",
  age: 28,
  position:"Defenseman",
  fantasy_points:7,
  goals: 25,
  assists: 45,
  image: "http://www.hockeydb.com/ihdb/photos/tyson-barrie-2020-38.jpg"
)
rielly = Player.create(
  name: "Morgan Rielly",
  age: 25,
  position:"Defenseman",
  fantasy_points:7.5,
  goals: 20,
  assists: 55,
  image: "http://www.hockeydb.com/ihdb/photos/morgan-rielly-2020-38.jpg"
)
klefbom = Player.create(
  name: "Oscar Klefbom",
  age: 26,
  position:"Defenseman",
  fantasy_points:5,
  goals: 20,
  assists: 30,
  image: "http://www.hockeydb.com/ihdb/photos/oscar-klefbom-2020-41.jpg"
)
mcavoy = Player.create(
  name: "Charlie McAvoy",
  age: 22,
  position:"Defenseman",
  fantasy_points:5,
  goals: 15,
  assists: 35,
  image: "http://www.hockeydb.com/ihdb/photos/charlie-mcavoy-2019-32.jpg"
)
chara= Player.create(
  name: "Zdeno Chara",
  age: 23,
  position:"Defenseman",
  fantasy_points:3.5,
  goals: 15,
  assists: 20,
  image: "http://www.hockeydb.com/ihdb/photos/zdeno-chara-2019-32.jpg"
)
carlson = Player.create(
  name: "John Carlson",
  age: 29,
  position:"Defenseman",
  fantasy_points:8.5,
  goals: 25,
  assists: 60,
  image: "http://www.hockeydb.com/ihdb/photos/john-carlson-2020-49.jpg"
)

#Contract

contract_1a = Contract.create(
  team: paris_blues,
  player:mcdavid 

)
contract_1b = Contract.create(
  team: paris_blues,
  player: gaudreau
)
contract_1c = Contract.create(
  team: paris_blues,
  player: monahan
)
contract_1d = Contract.create(
  team:paris_blues,
  player: carlson
)
contract_1e = Contract.create(
  team:paris_blues,
  player: dahlin
)


contract_2a = Contract.create(
  team: nyc_klapper,
  player: matthews
)
contract_2b = Contract.create(
  team:nyc_klapper,
  player: marchand
)
contract_2c = Contract.create(
  team:nyc_klapper,
  player: nylander
)
contract_2d = Contract.create(
  team:nyc_klapper,
  player: makar
)
contract_2e = Contract.create(
  team:nyc_klapper,
  player: hughes
)

contract_3a = Contract.create(
  team:london_red_devils,
  player: malkin
)
contract_3b = Contract.create(
  team:london_red_devils,
  player: gaudreau
)
contract_3c = Contract.create(
  team:london_red_devils,
  player: oshie
)
contract_3d = Contract.create(
  team:london_red_devils,
  player: chara
)
contract_3e = Contract.create(
  team:london_red_devils,
  player: klefbom
)

contract_4a = Contract.create(
  team: big_ballers,
  player: marner
)
contract_4b = Contract.create(
  team: big_ballers,
  player: nylander
)
contract_4c = Contract.create(
  team: big_ballers,
  player: kane
)
contract_4d = Contract.create(
  team: big_ballers,
  player: nurse
)
contract_4e = Contract.create(
  team: big_ballers,
  player: klefbom
)

contract_5a = Contract.create(
  team: tokyo_fins,
  player: mackinnon
)
contract_5b = Contract.create(
  team: tokyo_fins,
  player: eichel
)
contract_5c = Contract.create(
  team: tokyo_fins,
  player: crosby
)
contract_5d = Contract.create(
  team: tokyo_fins,
  player: rielly
)
contract_5e = Contract.create(
  team: tokyo_fins,
  player: barrie
)




# # Team Data ==> pulling out team name and location
# team_url = 'https://statsapi.web.nhl.com/api/v1/teams'
# team_data = RestClient.get team_url
# team_data_json = JSON.parse(team_data)["teams"]
# # Roster Data ==> pulling out roster first and last names
# team_roster_url = "https://statsapi.web.nhl.com/api/v1/teams/"
# # player_data = RestClient.get 'https://statsapi.web.nhl.com/api/v1/people/8477939/stats?stats=statsSingleSeason&season=20192020'
# # player_data_json = JSON.parse(player_data)
# # # puts player_data_arr.class
# # player_data_json["stats"].each do |player_stat|
# #   byebug
# #   Player.create(
# #     first_name: "", 
# #     last_name: "", 
# #     age: "", 
# #     position: "", 
# #     fantasy_points: "", 
# #     goals: "", 
# #     assists: "", 
# #     penalty_minutes: "", 
# #     shots_on_goal: "", 
# #     short_handed_goals: "", 
# #     power_play_points: ""
# #   )
# # end
# # player_url = 'https://statsapi.web.nhl.com/api/v1/people/8477939/stats?stats=statsSingleSeason&season=20192020'
# # response = HTTParty.get(player_url)
# # puts response
# # # User
# # saiko124 = User.create(first_name:'Hamidou', last_name:'Diallo', email: 'abc123@gmail.com', password:'abc1234')
# # # League
# # sharks_league = League.create(name:'NHL', location: 'San Jose')
# # # Player
# # william_nylander = Player.create(
# #   first_name: 'William',
# #   last_name: 'Nylander',
# #   age: 23,
# #   position: 'Forward',
# #   fantasy_points: 8.4,
# #   goals: 35,
# #   assists: 75,
# #   penalty_minutes: 16.8,
# #   shots_on_goal: 195,
# #   short_handed_goals: 14,
# #   power_play_points: 32
# # )
# # # Team
# # king_klapper = Team.create(name:'King Klapper FC',location: 'Bronx', league:sharks_league, user:saiko124 )
# # # Contract
# # contract1 = Contract.create(team:king_klapper, player:william_nylander)