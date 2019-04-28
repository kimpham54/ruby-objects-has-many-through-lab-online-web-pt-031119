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
    genre = Song.all.select {|item| item.genre == self.name}
  end

  def artists
    genre = Song.all.select {|item| item.genre == self.name | item.artist}
  end

end
