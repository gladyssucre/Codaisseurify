class SongsController < ApplicationController

  def destroy
     @song = Song.find(params[:id])
     @artist = @song.artist
     @song.destroy
     redirect_to artist_path(@artist.id)
   end

   def new
      #@song= current_artist.songs.build
    @song= Song.new
   end

   def create
    @song = Song.new(song_params.merge(artist_id: params[:artist_id]))
    #@song = Song.new(song_params)
    #@song.artist_id = @artist.id
    #@song.artist=Artist.find(artist_params[:id])
    #@song = Song.new(song_params).merge(artist_params)
    #@song.artist<< artist1
#variable.atribute= "value"
    #current_artist.songs.new
      if @song.save
        #artist_params do @song.artist.create(:artist) end
       redirect_to @artist, notice: "Song added"
     else
       render :new
     end

   end



   private

  def song_params
    params
    .require(:song)
    .permit(:name, :album, :year, :lyrics)
  end

  def artist_params
      params.require(:artist_id)
  end



#  t.bigint "artist_id"
#  t.index ["artist_id"], name: "index_songs_on_artist_id"
end
