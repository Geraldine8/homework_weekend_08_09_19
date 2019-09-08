require('minitest/autorun')
require('minitest/rg')
require_relative('../Room.rb')
require_relative('../Guest.rb')
require_relative('../Song.rb')
require_relative('../Bar_tab.rb')

class RoomTest < MiniTest::Test

  def setup
    @fee = BarTab.new("Entry Fee", 10)
    @room = Room.new("The Latin Place", 3, @fee)
    @song1 = Song.new("Ambiente", "J. Balvin")
    @song2 = Song.new("Bailando", "Enrique Iglesias")
    @song3 = Song.new("Bailando", "Shakira")
    @guest1 = Guest.new("Maria", 80, @song1)
    @guest2 = Guest.new("Laura", 100, @song2)
    @guest3 = Guest.new("Anna", 150, @song3)
    @guest4 = Guest.new("Lucy", 50, "")
  end

  def test_name()
    assert_equal("The Latin Place", @room.name())
  end


  def test_check_in_guest()
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    assert_equal(2, @room.guests.size())
  end

  def test_check_out_guest()
    @room.check_in_guest(@guest1)
    @room.check_out_guest(@guest1)
    assert_equal(0, @room.guests.size)
  end

  def test_add_song_to_room()
    @room.add_song(@song1)
    assert_equal(@song1, @room.playlist[0])
    # assert_equal(1, @room.playlist.size)
  end

  def test_count_guest()
    @room.check_in_guest(@guest1)
    assert_equal(1, @room.guests_count())
  end

  def test_add_entry_fee()
    @room.check_in_guest(@guest1)
    assert_equal(@fee, @room.tab[0])
  end

  def test_check_room_capacity()
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    @room.check_in_guest(@guest3)
    @room.check_in_guest(@guest4)
    assert_equal(3, @room.guests_count())
  end

  def test_remove_cash_from_guest()
    @room.check_in_guest(@guest1)
    assert_equal(70, @guest1.wallet())
  end

  def test_fav_song
    @room.add_song(@song1)
  p @room.check_in_guest(@guest1)
  end

end
