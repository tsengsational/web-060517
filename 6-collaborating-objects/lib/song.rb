class Song
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def self.all
    
    @@all
  end
end

# song = Song.new('touch the sky')
# song.artist =
# song.artist
  #
