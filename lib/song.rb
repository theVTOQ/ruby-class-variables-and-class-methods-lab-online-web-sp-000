class Song
  attr_accessor :name, :artist, :genre
  @@artists = {}
  @@genres = {}
  @@count = 0

  def initialize(artist, genre)
    @artist = artist
    @genre = genre

    add_artist(artist)
    add_genre(genre)

    @@count += 1
  end

  def add_artist(artist)
    if @@artists[artist] == nil
      @@artists[artist] = 1
    else
      @@artists[artist] += 1
    end
  end

  def add_genre(genre)
    if @@genres[genre] == nil
      @@genres[genre] = 1
    else
      @@genres[genre] += 1
    end
  end

  def self.genre_count(genre)
    @@genres.keys.count
  end
end
