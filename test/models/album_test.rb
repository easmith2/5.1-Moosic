require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  def setup
    @album = Album.new(title: 'A Title')
    @artist = Artist.new(name: 'A Name')
    @genre = Genre.new(name: 'Rock')
    @song = Song.new(title: 'Song Title', artist: @artist, genre: @genre, length: 2)
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
    b = @album.artists.new(name: 'Another Artist')
    b.save
    assert_equal [@artist, b], @album.artists
  end

  test "respond to song(s)" do
    assert_respond_to @album, :songs
  end

  test "has one song" do
    @album.songs << @song
    assert_equal [@song], @album.songs
  end

end
