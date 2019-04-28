class Genre
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    genre = Song.all.select {|item| item.genre == self}
  end

  def artists
    genre = Song.all.select {|item| item.genre == self | item.artist}
  end

end
