module SongsHelper

    # def artist_select(artist)
        # if song.artist.nil?
        #     #collection_select(object, method, collection, value_method, text_method
        #     collection_select (:artist_id, Artist.all, :id, :name)
        # else
        #     hidden_field_tag "song[artist_id]", song.artist_id
        # end
    # end
    def artist_select(song, path)
        # if song.artist && path == "nested"
            # hidden_field_tag "song[artist_id2]", song.artist_id2
        # else
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        # end
    end

end
