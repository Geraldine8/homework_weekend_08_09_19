class Song

  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def name_and_artist()
    return "#{@name} - #{@artist}"
  end

end
