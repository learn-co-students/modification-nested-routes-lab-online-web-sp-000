module SongsHelper
    def artist_name_field(song)
        if song.artist.nil?
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
          html = "<h2>by #{song.artist.name}</h2>"
          hidden_field_tag "song[artist_id]", song.artist_id
          html.html_safe
        end
      end
end
