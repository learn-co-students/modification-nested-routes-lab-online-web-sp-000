module SongsHelper

  def artist_select(song)
    song.artist
    link_to song.artist, song.artist
  end

end
