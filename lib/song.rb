class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  
  def initialize(artist)
    @artist = artist
    @@artists << artist
  end

  