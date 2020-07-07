module SongsHelper
  def artist_id_field(song)
    if song.artist
      hidden_field_tag 'song[artist_id]', song.artist_id
    else
      # collection_select :song, :artist_id, Artist.all, :id, :name
      select_tag 'song[artist_id]',options_from_collection_for_select(Artist.all, :id, :name)
    end
  end
end
