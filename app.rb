require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app/", __FILE__)
# require 'game'
require 'player'
require 'board'
require 'board_case'
# require 'application'
# require 'show'

new_board = Board.new



# Application.new.perform

