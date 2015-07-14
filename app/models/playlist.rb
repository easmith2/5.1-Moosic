class Playlist < ActiveRecord::Base
  has_many :song_playlists
  has_many :songs, through: :song_playlists
  has_many :artist_playlists
  has_many :artists, through: :artist_playlists
  has_many :genre_playlists
  has_many :genres, through: :genre_playlists
end
