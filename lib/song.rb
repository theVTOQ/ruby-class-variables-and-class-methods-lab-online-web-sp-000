class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []

  def initialize(artist, genre)
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end
