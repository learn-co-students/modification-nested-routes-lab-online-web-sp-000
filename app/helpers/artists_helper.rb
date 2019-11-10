module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end


  def artist_id_field(song)
    # no need for f.something
    if song.artist.nil?
      #if song instance has no artist
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      #if song instance already have an artist - can't be edited though.
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end
end
