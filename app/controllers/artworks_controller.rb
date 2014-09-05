class ArtworksController < ApplicationController

	def create
		@artwork = Artwork.create( artwork_params )
	end
	def artwork_params
	    params.require(:artwork).permit(:name, :descr, :medium, :price, :avatar)
	end
	def show
		@artwork = Artwork.find(params[:id])
	end

end 