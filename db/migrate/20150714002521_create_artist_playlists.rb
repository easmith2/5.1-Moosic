class CreateArtistPlaylists < ActiveRecord::Migration
  def change
    create_table :artist_playlists do |t|
      t.integer :artist_id
      t.integer :playlist_id

      t.timestamps null: false
    end

    add_index :artist_playlists, [:artist_id, :playlist_id]
  end
end
