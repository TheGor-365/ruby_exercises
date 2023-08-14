class Album
  attr_reader :name, :songs

  def initialize name
    @name, @songs = name, []
  end

  def add_songs song
    @songs << song
  end
end

class Song
  attr_reader :name, :duration

  def initialize name, duration
    @name, @duration = name, duration
  end
end



album_1 = Album.new 'Rock legends'

song_1 = Song.new 'Blury', 4
song_2 = Song.new 'My way', 5

album_1.add_songs song_1
album_1.add_songs song_2

puts album_1.name

album_1.songs.each do |song, duration|
  puts "Album: #{song.name} #{song.duration}"
end

puts

puts album_1.songs[1].name
