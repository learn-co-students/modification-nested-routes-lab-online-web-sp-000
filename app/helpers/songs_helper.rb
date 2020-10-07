module SongsHelper
    def artist_id_field(song)
        if song.artist_id.nil?
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
            hidden_field "song[artist_id]", song.artist_id
        end
    end
end
