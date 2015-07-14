class Song < ActiveRecord::Base
  belongs to :artist
  belongs to :album
  belongs to :genre
  has_many :song_playlists
  has_many :playlists, through: :song_playlists

end
