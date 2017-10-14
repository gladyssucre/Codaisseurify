class SongsController < ApplicationController

  def destroy
     @song = Song.find(params[:id])
     @artist = @song.artist
     @song.destroy
     redirect_to artist_path(@artist.id)
   end

   def new
     @song= Song.new
   end

   def create
     @song = Song.new
     if @song.save
       redirect_to @artist, notice: "Song saved"
     else
       render :new
     end
   end
end
