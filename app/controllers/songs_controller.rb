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
#@booking = current_user.bookings.new(booking_params.merge(event_id: params[:event_id]))
    @song = Song.new(song_params)
#variable.atribute= "value"
    #current_artist.songs.new
     if @song.save
       redirect_to @artist, notice: "Event created"
     else
       render :new
     end
   end



   private

  def current_artist
    artist_id=@artist
  end

  def song_params
    params
    .require(:song)
    .permit(:name, :album, :year, :lyrics, :artist)
  end

#  t.bigint "artist_id"
#  t.index ["artist_id"], name: "index_songs_on_artist_id"
end
