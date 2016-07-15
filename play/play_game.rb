#!/usr/bin/env ruby

require_relative "../lib/tic_tac_toe.rb"
 
puts "Welcome to Tic Tac Toe"

blake = TicTacToe::Player.new({color: "X", name: "Blake"})
roland = TicTacToe::Player.new({color: "Y", name: "Roland"})
players = [blake, roland]

TicTacToe::Game.new(players).play