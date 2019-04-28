require 'pry'
class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
    # @songs = []
  end

  def self.all
    @@all
  end

  def songs
    genre = Song.all.select {|item| item.genre == self}
  end

  def artists
    Song.all.select do |item|
      if item.genre == self
      girl = item.artist

      binding.pry
      girl
    end
  end
end

end
