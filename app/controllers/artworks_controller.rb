class ArtworksController < ApplicationController
	def index
	end
	def show 
	end 
end 

def create
  @artwork = Artwork.create( artwork_params )
end
  def artwork_params
    params.require(:artwork).permit(:name, :descr, :medium, :price, :avatar)
end