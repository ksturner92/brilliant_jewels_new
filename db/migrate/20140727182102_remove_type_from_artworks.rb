class RemoveTypeFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :type, :string
  end
end
