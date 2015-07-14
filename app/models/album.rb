class Album < ActiveRecord::Base
  has_many :songs
  has_many :album_artists
  has_many :artists, through: :album_artists
  has_many :album_genres
  has_many :genres, through: :album_genres

end
