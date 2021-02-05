module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song)
    # collection_select(song, :artist_id, Artist.all, :id, :name, prompt: true)
    select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)

  end

end
