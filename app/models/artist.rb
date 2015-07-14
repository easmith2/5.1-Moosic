class Artist < ActiveRecord::Base
  has_many :songs
  has_many :album_artists
  has_many :albums, through: :album_artists
  has_many :artist_genres
  has_many :genres, through: :artist_genres
  has_many :artist_playlists
  has_many :playlists, through: :artist_playlists
end
