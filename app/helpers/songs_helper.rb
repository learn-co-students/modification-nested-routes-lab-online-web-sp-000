module SongsHelper
    def artist_select(song)
        if song.artist.nil?
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
            f.label :artist_name
            f.text_field :artist_name
        end
    end
end
