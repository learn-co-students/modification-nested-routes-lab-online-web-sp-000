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
      @song = Song.find_by(id: params[:id])
    end
  end

  def new
    if !params[:artist_id].blank?
      @artist = Artist.find_by(id: params[:artist_id])
      if @artist == nil
        redirect_to artists_path
      else
        @song = Song.new(artist_id: params[:artist_id])
      end
    else
      @song = Song.new
    end
  end

  def create
    @artist = Artist.find_by(id: params[:song][:artist_id])
    @song = Song.new
    @song.artist_name = @artist.name

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    puts params
    @song = Song.find_by(id: params[:id])

    if params[:artist_id].blank?
      @in_song = true
    else
      @artist = Artist.find_by(id: params[:artist_id])
      if @artist == nil
        redirect_to artists_path
      end
      @song = Song.find_by(id: params[:id])
      if @song.blank?
        @in_song = false
        redirect_to artist_songs_path(@artist)
      end
    end
  end

  def update
    @song = Song.find_by(id: params[:id])

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
    params.require(:song).permit(:title, :artist_name)
  end
end
