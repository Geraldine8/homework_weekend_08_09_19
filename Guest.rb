class Guest
  attr_reader :name, :wallet, :fav_song

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def remove_cash(bartab)
    @wallet -= bartab.charge
  end

  def cheer_loudly(playlist)
    return "Whoo!"  if playlist.include?(@fav_song)
    return nil
  end

end
