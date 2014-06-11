# load all objects
# require 'pry'
require_relative 'lib/game_manager'
require_relative 'lib/player'
require_relative 'lib/secret'
require_relative 'lib/utilities'


puts
puts "******* Welcome to Kevin's secret number game! *******"
puts
puts "what is your name?"
# grab name and create a new instance of a player
name = gets.chomp

player = Player.new(name)
secret_number = Secret.new
game = Game.new(player, secret_number)

puts 
# check utilities.rb file for check_name method
puts check_name(name) 
puts
game.game_rules




