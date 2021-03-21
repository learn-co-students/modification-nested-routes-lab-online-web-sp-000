class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def artist_id
    self.try(:artist).try(:id)
  end

  def artist_id=(artist_id)
    artist = Artist.find_by(id: artist_id)
    self.artist = artist
  end
end
