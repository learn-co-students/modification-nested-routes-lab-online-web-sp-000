module SongsHelper
    def artist_form_helper(song)
        if !song.artist.nil?
            hidden_field_tag "song[artist_id]", song.artist_id
        elsif Artist.exists?(params[:artist_id])
            hidden_field_tag "song[artist_id]", song.artist_id
        else
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)

        end
    end

    def new_song_artist
        if Artist.exists?(params[:artist_id])
            link_to "Add New Song", new_artist_song_path
        else
            link_to "Add New Song", new_song_path
        end
    end
end
