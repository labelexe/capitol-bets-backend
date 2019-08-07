# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'Date'

User.destroy_all
Bet.destroy_all
Game.destroy_all

user1 = User.create!(username: "kagada01", password: "1234", email: "dankagan7@gmail.com", cash: 500)
user2 = User.create!(username: "dankagan", password: "1234", email: "kagada01@gettysburg.edu", cash: 500)

game1 = Game.create!(game_date: Date.new(2019,8,6) , game_location: "Washington, D.C.", game_venue: "Nationals Park", game_winner: "Washington Nationals", game_team1: "Washington Nationals", game_team2: "San Francisco Giants", sport_event_status_live: false, sport_event_status_ended: true)
game2 = Game.create!(game_date: Date.new(2019,8,6) , game_location: "Boston, MA", game_venue: "Fenway Park", game_winner: "Kansas City Royals", game_team1: "Boston Red Sox", game_team2: "Kansas City Royals", sport_event_status_live: true, sport_event_status_ended: false)

bet1 = Bet.create!(match_id: game1.id, bet_setter_id: user1.id, bet_taker_id: user2.id, money_line_odds: 110, wager_amount: 75, winner_id: user1.id)
bet2 = Bet.create!(match_id: game1.id, bet_setter_id: user2.id, bet_taker_id: user1.id, money_line_odds: 250, wager_amount: 25, winner_id: user2.id)
