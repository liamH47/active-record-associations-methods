class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    self.artists.map(&:name)
    # return an array of strings containing every musician's name
  end
end
