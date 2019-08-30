module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song, making_tests_pass_with_variables_i_dont_need = "waste of my time")
    if song.artist.nil?
        select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
       sanitize "<p>#{song.artist.name}</p>"
    end
end
end
