class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    add_artist(artist)
    add_genre(genre)

    @@count += 1
  end

  def add_artist(artist)
    if @@artist_count[artist] == nil
      @@artist_count[artist] = 1
    else
      @@artist_count[artist] += 1
    end

    if !@@artists.include?(artist)
      @@artists << artist 
    end
  end

  def add_genre(genre)
    if @@genre_count[genre] == nil
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] += 1
    end

    if !@@genres.include?(genre)
      @@genres << genre
    end
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end
end
