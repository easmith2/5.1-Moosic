class CreateGenrePlaylists < ActiveRecord::Migration
  def change
    create_table :genre_playlists do |t|
      t.integer :genre_id
      t.integer :playlist_id

      t.timestamps null: false
    end

    add_index :genre_playlists, [:genre_id, :playlist_id]
  end
end
