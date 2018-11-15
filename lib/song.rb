class Song
  attr_accessor :name, :artist, :genre
  ARTISTS = []
  GENRES = []
  @@count = 0

  def initialize(artist, genre)
    @artist = artist
    @genre = genre
    ARTISTS << artist
    GENRES << genre
    @@count += 1
  end
