

class Videogame

  attr_accessor :title, :genre, :characters

  @@all = []

  def initialize(title, genre)
    @title = title
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def add_character(character)
    character.videogame = self
  end

  def characters
    Character.all.select{|char| char.videogame == self}
  end

  def chorus
    self.characters.map{|char| puts char.finishing_move}
  end

  def highest_score_and_player
    scores = self.characters.map{|char| char.player.high_score}
    score = scores.sort[-1]
    players = self.characters.find{|char| char.player.high_score == score}.player.username

    puts "The score to beat is #{score} by #{players}."
  end
end
