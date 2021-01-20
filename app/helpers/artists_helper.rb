module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  # Display name if new/edit route is nested
  def display_name(song, path)
    if song.artist && path == "nested"
      song.artist.name
    end
  end

  # Display a hidden field with artist_id if new/edit route is nested
  # Else display a select option with dropdown of artist_select
  def artist_select(song, path)
    if song.artist && path == "nested"
      hidden_field_tag "song[artist_id]", song.artist_id
    else
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    end
  end

end
