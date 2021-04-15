module SongsHelper

    def artist_select(song, path)
        if song.artist && path == "nested"
          label = label_tag "artist_id", "By "
          hidden_field_tag "song[artist_id]", song.artist_id
          label + song.artist.name
        else
          label = label_tag "artist_id", "Select Artist "
          input = select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
          label + input
        end
      end

end
