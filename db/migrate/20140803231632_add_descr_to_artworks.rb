class AddDescrToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :descr, :string
  end
end
