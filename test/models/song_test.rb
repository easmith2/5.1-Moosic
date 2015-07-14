require 'test_helper'

class SongTest < ActiveSupport::TestCase
  def setup
    @song = songs(:song0)
  end

  test "respond to playlist(s)" do
    assert_respond_to @song, :playlists
  end

end
