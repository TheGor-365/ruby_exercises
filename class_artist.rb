class Artist
  attr_reader :name, :country, :albums

  def initialize(name, country)
    @name, @country, @albums = name, country, []
  end

  def artist_albums(album)
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

  def initialize(name, date, style)
    @name, @date, @style, @album_songs = name, date, style, []
  end

  def add_songs(songs)
    @album_songs << songs
  end

  def puts_songs
    puts "The album #{name} #{date}, #{style}:"

    @album_songs.each_with_index do |song_pare, index|
      puts "\tTrack #{index + 1}. #{song_pare.name} #{song_pare.duration}"
    end
  end
end


class Song
  attr_reader :name, :duration

  def initialize(name, duration)
    @name, @duration, @songs = name, duration, {}
  end

  def song_pair
    @songs = { @name => @duration }
  end
end



song_1 = Song.new 'Nokie', '5 min'
song_2 = Song.new 'My way', '6 min'
song_3 = Song.new 'Faith', '3.5 min'

album_1 = Album.new 'My way', 1999, 'rock, alternative'
album_2 = Album.new 'Faith', 1995, 'rock, alternative'

album_1.add_songs song_1
album_1.add_songs song_2
album_2.add_songs song_3

artist1 = Artist.new 'Limp Bizkit', 'USA'

artist1.artist_albums album_1
artist1.artist_albums album_2

artist1.albums

album_1.puts_songs
album_2.puts_songs
