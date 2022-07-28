class Album
  attr_reader :name, :songs

  def initialize name
    @name = name
    @songs = []
  end

  def add_songs song
    @songs << song
  end
end

class Song
  attr_reader :name, :duration

  def initialize name, duration
    @name = name
    @duration = duration
  end
end

album1 = Album.new 'Rock legends'

song1 = Song.new 'Blury', 4
song2 = Song.new 'My way', 5

album1.add_songs song1
album1.add_songs song2

puts album1.name
album1.songs.each do |song, duration|
  puts "Album: #{song.name} #{song.duration}"
end
puts
puts album1.songs[1].name
