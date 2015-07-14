class GenrePlaylist < ActiveRecord::Base
  belongs_to :genre
  belongs_to :playlist
end
