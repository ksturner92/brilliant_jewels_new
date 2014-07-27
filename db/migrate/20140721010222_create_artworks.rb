class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :type
      t.string :name
      t.string :image
      t.string :price
      t.string :medium

      t.timestamps
    end
  end
end
