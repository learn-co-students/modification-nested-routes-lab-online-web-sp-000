module SongsHelper
    def set_artist(song)
        @artists = Artist.all
        if song.artist.present?
            hidden_field_tag :artist_id, song.artist.id
        else
            select_tag 'song[artist_id]', options_from_collection_for_select(@artists, 'id', 'name')
        end
    end
end
