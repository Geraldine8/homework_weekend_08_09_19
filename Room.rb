class Room
  attr_reader :name, :guests, :playlist, :tab

  def initialize(name, capacity, entry_fee)
    @name = name
    @capacity = capacity
    @entry_fee = entry_fee
    @guests = []
    @playlist = []
    @tab = []
  end

  def check_in_guest(guest)
    #=========== Check capacity =======
    return 'Room Full' if guests_count() == @capacity
    # if guests_count() < @capacity
    #   @guests.push(guest)
    # else
    #   "You cannot access because the room has reached its max capacity"
    # end
    #========== Fees ===================
    @tab.push(@entry_fee)
    #========  Check in guest ==========
    @guests.push(guest)
    #======= Remove cash from guest ====
    guest.remove_cash(@entry_fee)
    #======== Fav Song =================
    return guest.cheer_loudly(@playlist)
  end
  
  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @playlist.push(song)
  end

  def guests_count()
    @guests.count()
  end

end
