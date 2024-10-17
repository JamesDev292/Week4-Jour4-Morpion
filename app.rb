$:.unshift File.expand_path("./../lib", __FILE__)

require_relative "lib/player"
require_relative "lib/game"
require_relative "lib/board"


puts " ___________________________________________"
puts "|                                           |"
puts "| Démarage d'une petite partie de Morpion ! |"
puts "|___________________________________________|"
puts " "

# Demander le nom du joueur 1
puts "Joueur 1, quel est ton nom ?"
print "> "
name1 = gets.chomp
joueur1 = Player.new(name1, "X")

# Demander le nom du joueur 2
puts "Joueur 2, quel est ton nom ?"
print "> "
name2 = gets.chomp
joueur2 = Player.new(name2, "O")
puts " "


game = Game.new(joueur1, joueur2)

game.update_display(joueur1, joueur2)



