

class Player

  attr_accessor :username, :high_score, :characters

  @@all = []

  def initialize(username)
    @username = username
    @high_score = rand(10..400).to_i
    @@all << self
  end

  def self.all
    @@all
  end

  def choose_character (character)
    character.player = self
  end

  def characters
    Character.all.select{|char| char.player == self}
  end

  def new_high_score
    new_score = rand(10..400).to_i
    if new_score == 400
      puts "You've beaten the game!"
      @high_score = new_score
    elsif new_score > @high_score
      @high_score = new_score
      puts "You're improving! New high score of #{@high_score}!"
      @high_score
    else
      puts "Try again! That wasn't your highest score! Your score this game was #{new_score}, but your high score is #{@high_score}."
    end
  end

end
