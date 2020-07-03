module SongsHelper

  def artist_select(song)
    song.artist
    link_to song.artist, song.artist
    select_tag "song", options_from_artist(@song)
  end

end
