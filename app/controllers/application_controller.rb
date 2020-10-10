class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :find_artist_song, :find_song

  def find_artist_song(artist_id, song_id)
    if @artist = Artist.find_by(id:artist_id)
      if @song = @artist.songs.find_by(id:song_id)
        @song
      else
        redirect_to artist_songs_path(@artist), alert: "Song not found"
      end
    else
      redirect_to artists_path, alert: "Artist not found"
    end
  end

def find_song(song_id)
    if @song = Song.find_by(id: song_id)
      @song
    else
      redirect_to songs_path, alert: "Song not found"
    end
end
end
