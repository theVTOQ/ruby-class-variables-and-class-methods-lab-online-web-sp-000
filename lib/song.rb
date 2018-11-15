class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []

  def initialize(artist, genre)
    @artist = artist
    @@artists << artist
  end
