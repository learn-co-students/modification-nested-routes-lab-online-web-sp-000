module SongsHelper
  def artist_select(song, path)
    if song.artist && path == "nested"
      hidden_field_tag "song[artist_id]", song.artist_id
      song.artist.name
    else
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    end
  end
end


