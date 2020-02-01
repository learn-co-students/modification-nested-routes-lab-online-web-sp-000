module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  #def artist_select(song, artists)
  #  if song.artist == nil
  #collection_select artists
  #  else
  #name = song.artist.name
  #name
  #  end
  #end

end
