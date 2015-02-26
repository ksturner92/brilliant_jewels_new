class ArtworksController < ApplicationController
	def index
		@artworks = Artwork.all
	end

	def show 
		@artwork = Artwork.find(params[:id])
	end

	def new
		debugger
		@artwork = Artwork.new
	end

	def create
  		@artwork = Artwork.create( artwork_params )

  		@artwork.save
	end

	def edit
		@artwork = Artwork.find(params[:id])
		@artwork.update(artwork_params)
    		redirect_to @artwork
	end

private
  def artwork_params
    	params.require(:artwork).permit(:name, :descr, :medium, :price, :avatar)
	end
end