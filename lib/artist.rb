require "pry"
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.filter { |song| song.artist == self}
  end

  def genres
    # has many genres, through songså
      songs.map { |song| song.genre}
      # binding.pry

  end
  puts 'ffff'
end
