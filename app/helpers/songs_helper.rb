module SongsHelper
    def song_artist_name_field(song)
        if song.artist.nil?
            select_tag "song[artist_id]", collection_check_boxes(:song,:artist_id, Artist.all, :id, :name)
        else
            hidden_field_tag "song[artist_id]", song.artist_id
        end
    end
end
