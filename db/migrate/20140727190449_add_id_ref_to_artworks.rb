class AddIdRefToArtworks < ActiveRecord::Migration
  def change
    add_reference :artworks, :id, index: true
  end
end
