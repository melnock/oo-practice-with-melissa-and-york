

class Character

  attr_accessor :name, :finishing_move, :videogame, :player

  @@all = []

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
    @@all << self
  end

  def self.all
    @@all
  end

  def delete_character
    Character.all.delete_if{|char| char == self}
  end

end
