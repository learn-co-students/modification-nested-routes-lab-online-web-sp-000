module SongsHelper
    def artist_select(song)
        if song.artist.nil?
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
            # The code below also works. 
            # collection_select(:song, :artist_id, Artist.all, :id, :name, include_blank: true)
        else
            hidden_field_tag "song[artist_id]", song.artist_id
        end
    end
end
