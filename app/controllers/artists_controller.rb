class ArtistsController < ApplicationController
   def index
      @artists = Artist.all
    end

    def show
      @artist=Artist.find(params[:id])
      @songs=Song.all
    end

    def destroy
     @artist = Artist.find(params[:id])
     @artist.destroy
     redirect_to root_path
     end

#have not used them
    def new
      @artist = artists.new
    end

    def create
      @artist = artists.new
      if @artist.save
        redirect_to @artist, notice: "Artist saved"
      else
        render :new
      end
    end

    def edit
      @artist = Artist.find(params[:id])
    end

end
