require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  def setup
    @album = albums(:album0)
    @artist = artists(:artist0)
    @genre = genres(:genre0)
    @song = songs(:song0)
  end

  test "respond to album(s)" do
    assert_respond_to @artist, :albums
  end

  test "has one album" do
    @artist.albums << @album
    assert_equal [@album], @artist.albums
  end

  test "has multiple albums" do
    @artist.albums << @album
    a = @artist.albums.new(title: 'Another Album')
    a.save
    assert_equal [@album, a], @artist.albums
  end

  test "respond to song(s)" do
    assert_respond_to @artist, :songs
  end

  test "has one song" do
    assert_equal [@song], @artist.songs
  end

  test "can add more songs" do
    a = @artist.songs.new(title: 'Another Song', album: @album, genre: @genre, length: 3)
    a.save
    assert_equal [@song, a], @artist.songs
  end

  test "respond to genre(s)" do
    assert_respond_to @artist, :genres
  end

  test "has one genre" do
    @artist.genres << @genre
    assert_equal [@genre], @artist.genres
  end

  test "respond to playlist(s)" do
    assert_respond_to @artist, :playlists
  end

end
