class Artist
  attr_reader :name, :country, :albums

  def initialize name, country
    @name, @country, @albums = name, country, []
  end

  def artist_albums album
    @albums << album
  end

  def albums
    puts "The albums of #{name}:"

    @albums.each_with_index do |album, index|
      puts "\t#{index + 1}. #{album.name} #{album.date} #{album.style}"
    end
  end
end


class Album
  attr_reader :name, :date, :style

  def initialize name, date, style
    @name, @date, @style, @a_songs = name, date, style, []
  end

  def add_songs songs
    @a_songs << songs
  end

  def puts_songs
    puts "The album #{name} #{date}, #{style}:"

    @a_songs.each_with_index do |song_pare, index|
      puts "\tTrack #{index + 1}. #{song_pare.name} #{song_pare.duration}"
    end
  end
end


class Song
  attr_reader :name, :duration

  def initialize name, duration
    @name, @duration, @songs = name, duration, {}
  end

  def song_pair
    @songs = { @name => @duration }
  end
end


song1 = Song.new 'Nokie', '5 min'
song2 = Song.new 'My way', '6 min'
song3 = Song.new 'Faith', '3.5 min'

album1 = Album.new 'My way', 1999, 'rock, alternative'
album2 = Album.new 'Faith', 1995, 'rock, alternative'

album1.add_songs song1
album1.add_songs song2
album2.add_songs song3

artist1 = Artist.new 'Limp Bizkit', 'USA'

artist1.artist_albums album1
artist1.artist_albums album2

artist1.albums
album1.puts_songs
album2.puts_songs
