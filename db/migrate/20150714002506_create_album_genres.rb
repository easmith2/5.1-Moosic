class CreateAlbumGenres < ActiveRecord::Migration
  def change
    create_table :album_genres do |t|
      t.integer :album_id
      t.integer :genre_id

      t.timestamps null: false
    end

    add_index :album_genres, [:album_id, :genre_id]
  end
end
