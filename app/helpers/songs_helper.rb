module SongsHelper
    def artist_id_field(song)
        if song.artist.nil?
          artist_select(song, song.artist)
        else
          hidden_field_tag "song[artist_id]", song.artist_id
        end
      end
end
