require('minitest/autorun')
require('minitest/rg')
require_relative('../Song.rb')

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Ambiente", "J. Balvin")
    # @song2 = Song.new("Taki-Taki", "Dj Snake")
  end


  def test_song_name_and_artist()
    assert_equal("Ambiente - J. Balvin", @song1.name_and_artist())
  end
end
