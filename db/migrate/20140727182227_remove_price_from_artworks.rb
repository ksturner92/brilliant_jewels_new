class RemovePriceFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :price, :string
  end
end
