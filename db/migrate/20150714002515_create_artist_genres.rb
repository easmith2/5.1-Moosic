class CreateArtistGenres < ActiveRecord::Migration
  def change
    create_table :artist_genres do |t|
      t.integer :artist_id
      t.integer :genre_id
      
      t.timestamps null: false
    end

    add_index :artist_genres, [:artist_id, :genre_id]
  end
end
