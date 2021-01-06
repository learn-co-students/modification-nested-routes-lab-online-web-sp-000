module SongsHelper
    def artist_id_field(song)
        if song.nil?
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
          hidden_field_tag "song[artist]", song.artist_id
        end
    end
end
