module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song, artist)
    if artist.nil?
      :artist_id, options_from_collection_for_select(Artist.all, :id, :name)
    else
      :artist_id, options_from_collection_for_select(Artist.all, :id, :name, @artist.id)
    end
  end
end
