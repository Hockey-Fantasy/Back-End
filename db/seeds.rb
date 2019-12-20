# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
League.destroy_all
Player.destroy_all
Team.destroy_all

# User
saiko124 = User.create(first_name:'Hamidou', last_name:'Diallo', email: 'abc123@gmail.com', password:'abc1234')

# League
sharks_league = League.create(name:'NHL', location: 'San Jose')

# Player
william_nylander = Player.create(
  first_name: 'William',
  last_name: 'Nylander',
  age: 23,
  position: 'Forward',
  fantasy_points: 8.4,
  goals: 35,
  assists: 75,
  penalty_minutes: 16.8,
  shots_on_goal: 195,
  short_handed_goals: 14,
  power_play_points: 32
)

# Team
king_klapper = Team.create(name:'King Klapper FC',location: 'Bronx', league:sharks_league, user:saiko124 )


# Contract
contract1 = Contract.create(team:king_klapper, player:william_nylander)