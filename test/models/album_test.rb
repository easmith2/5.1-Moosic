require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  def setup
    @album = albums(:album0)
    @artist = artists(:artist0)
    @genre = genres(:genre0)
    @song = songs(:song0)
    # @album1 = albums(album1)
    # @album2 = albums(album2)
    # @album3 = albums(album3)
  end

  test "respond to artist(s)" do
    assert_respond_to @album, :artists
  end

  test "has one artist" do
    @album.artists << @artist
    assert_equal [@artist], @album.artists
  end

  test "has multiple artists" do
    @album.artists << @artist
    a = @album.artists.new(name: 'Another Artist')
    a.save
    assert_equal [@artist, a], @album.artists
  end

  test "respond to song(s)" do
    assert_respond_to @album, :songs
  end

  test "has one song" do
    assert_equal [@song], @album.songs
  end

  test "can add more songs" do
    a = @album.songs.new(title: 'Another Song', artist: @artist, genre: @genre, length: 3)
    a.save
    assert_equal [@song, a], @album.songs
  end

  test "respond to genre(s)" do
    assert_respond_to @album, :genres
  end

  test "has one genre" do
    @album.genres << @genre
    assert_equal [@genre], @album.genres
  end

end
