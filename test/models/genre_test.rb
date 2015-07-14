require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  def setup
    @album = albums(:album0)
    @artist = artists(:artist0)
    @genre = genres(:genre0)
    @song = songs(:song0)
  end

  test "respond to album(s)" do
    assert_respond_to @genre, :albums
  end

  test "respond to artist(s)" do
    assert_respond_to @genre, :artists
  end

  test "respond to song(s)" do
    assert_respond_to @genre, :songs
  end

  test "respond to playlist(s)" do
    assert_respond_to @genre, :playlists
  end
end
