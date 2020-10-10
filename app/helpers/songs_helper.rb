module SongsHelper
    def artist_id_field(song)
        if song.artist
            hidden_field_tag "song[artist_id]", song.artist_id
        else
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name), include_blank: true
        end
    end

end
