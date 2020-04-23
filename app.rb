# Recuperer des gems requises
require 'bundler'
require 'pry'

Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
#require_relative 'lib/morpion'


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "|                                                    |"
puts "|                 PLAY MORPION GAME                  |" 
puts "|                                                    |"  
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"

print "Start game : Entrez votre pseudo joueur 1 : " 
player1 = gets.chomp

print "Entrez votre pseudo Joueur 2 : " 
player2 = gets.chomp

puts "#{player1} vs #{player2}"


require 'game'
require 'player'
require 'board'
require 'boardcase'
#require 'views/show'

Game.new.perform


#Fin du jeu
