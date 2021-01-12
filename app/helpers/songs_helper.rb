module SongsHelper
  def artist_select(song, artists)
    if song.artist == nil #edits a song directly
      #display a drop-down list of artists
      collection_select(:song, :artist_id, artists, :id, :name)
    else
      #display the artist's name if they are editing through nested routing
      song.artist_name
    end
  end
end
