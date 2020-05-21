module SongsHelper
    def artist_select(song)
        if song.artist.nil?
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
            text_field_tag :artist_name 
        end
    end
end
