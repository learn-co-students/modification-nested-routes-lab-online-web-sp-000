module SongsHelper
    def artist_select(song, display_name)
        if song.artist.nil?
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
          display_name = song.artist_name
          hidden_field_tag "song[artist_id]", song.artist_id
        end
    end
end
