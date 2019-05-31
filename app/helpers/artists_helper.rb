module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song, params)
    if params[:artist_id]
      text_field_tag :song_artist_id
    else
      select_tag :song_artist_id, options_from_collection_for_select(Artist.all, :id, :name)
    end
  end
end
