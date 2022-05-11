# typed: true
class CreateRecentTopAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :recent_top_albums do |t|
      t.string :title
      t.integer :rank
      t.integer :playcount
      t.string :artist
      t.string :cover_small
      t.string :cover_medium
      t.string :cover_large
      t.string :album_url
      t.string :artist_url

      t.timestamps
    end
  end
end
