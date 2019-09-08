require('minitest/autorun')
require('minitest/rg')
require_relative('../Guest.rb')
require_relative('../Bar_tab.rb')
require_relative('../Song.rb')
require('pry')

class GuestTest < MiniTest::Test

  def setup
    @song1 = Song.new("Ambiente", "J. Balvin")
    @song2 = Song.new("Bailando", "Enrique Iglesias")
    @song3 = Song.new("Bailando", "Shakira")
    @guest1 = Guest.new("Maria", 80, @song1)
    @guest2 = Guest.new("Laura", 100, @song2)
    @guest3 = Guest.new("Zori", 60, @song3)
  end

  def test_guest_name
    assert_equal("Maria", @guest1.name)
    assert_equal("Laura", @guest2.name)
    assert_equal("Zori", @guest3.name)
  end

  def test_guest_cash
    assert_equal(80, @guest1.wallet)
    assert_equal(100, @guest2.wallet)
    assert_equal(60, @guest3.wallet)
  end

  def test_guest_fav_song
    assert_equal(@song1, @guest1.fav_song)
    assert_equal(@song2, @guest2.fav_song)
    assert_equal(@song3, @guest3.fav_song)
  end

  def test_remove_cash()
    bartab = BarTab.new("Fee",10)
    @guest1.remove_cash(bartab)
    assert_equal(70, @guest1.wallet())
  end

  def test_cheer_loudly()
    playlist = [@song1, @song2]
    assert_equal("Whoo!", @guest1.cheer_loudly(playlist))
  end

end
