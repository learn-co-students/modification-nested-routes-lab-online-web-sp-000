class SongsController < ApplicationController
  def index
    if params[:artist_id]
      @artist = Artist.find_by(id: params[:artist_id])
      if @artist.nil?
        redirect_to artists_path, alert: "Artist not found"
      else
        @songs = @artist.songs
      end
    else
      @songs = Song.all
    end
  end

  def show
    if params[:artist_id]
      @artist = Artist.find_by(id: params[:artist_id])
      @song = @artist.songs.find_by(id: params[:id])
      if @song.nil?
        redirect_to artist_songs_path(@artist), alert: "Song not found"
      end
    else
      @song = Song.find(params[:id])
    end
  end

  def new #new action to ensure that we're creating a new post for a valid author.
    #we check for params[:author_id] and then for Author.exists? to see if the author is real.
    if params[:artist_id] && !Artist.exists?(params[:artist_id])
      redirect_to artists_path, alert: "Artist not found"
    else
      #we're passing the params[:artist_id] into Song.new(). We want to make sure that, if we capture an artist_id through a nested route,
      # we keep track of it and assign the song to that author.
      @song = Song.new(artist_id: params[:artist_id])
    end
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    #check to make sure that 1) the artist_id is valid and 2) the song matches the artist.
    if params[:artist_id]
      artist = Artist.find_by(id: params[:artist_id])
      if artist.nil?
        redirect_to artists_path, alert: "Artist not found"
      else
        @song = artist.songs.find_by(id: params[:id])
        redirect_to artist_songs_path(artist), alert: "Song not found" if @song.nil?
      end
    else
      @song = Song.find(params[:id])
    end
  end

  def update
    @song = Song.find(params[:id])

    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_name, :artist_id)
  end
end

