require "pry"
require_relative "videogame.rb"
require_relative "character.rb"
require_relative "player.rb"

xoxo = Player.new("xoxo")
yw544 = Player.new("yw544")
mel = Player.new("mel")
york = Player.new("york")

subzero = Character.new("subzero", "SMASH DOWN")
scorpion = Character.new("scorpion", "GET OVER HERE")
link = Character.new("link", "master sword")
mario = Character.new("mario", "IT's-a ME!")

smashbros = Videogame.new("Super Smash Brothers", "PVP")
mortal_kombat = Videogame.new("Mortal Kombat", "Arcade")
pacman = Videogame.new("Mrs. Pacman", "Arcade")

smashbros.add_character(link)
smashbros.add_character(subzero)
pacman.add_character(scorpion)
mortal_kombat.add_character(mario)

xoxo.choose_character(subzero)
yw544.choose_character(scorpion)
mel.choose_character(link)
york.choose_character(mario)

binding.pry

"hey"
