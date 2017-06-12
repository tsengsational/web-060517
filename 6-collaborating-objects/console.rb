require_relative 'environment.rb'
# require_relative 'seed.rb'

def reload!
  load './environment.rb'
end

# kanye = Artist.new('kanye')
# song = Song.new('touch the skye')
# song.artist = kanye
# kanye.songs - >
#   [<>]

Pry.start
