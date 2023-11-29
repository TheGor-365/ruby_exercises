result = %w[ / * - ** + ].map do |method|
  4.send method, 2
end

pp result; puts




result = %w[ / * - ** + wow ].map do |method|
  4.send :respond_to?, method
end

pp result; puts




class Song
  def song_title(*arguments)
    pp arguments.join(' ')
  end
end

song = Song.new

song.send :song_title, 'Send', 'me', 'a', 'River'; puts




class Person
  attr_accessor :name, :age, :sex, :height, :race

  def initialize(arguments)
    arguments.each { |name, value| self.send("#{name}=", value) }
  end
end


person_1 = {
  name:   'James Jones',
  sex:    'M',
  height: 5.6
}

person_2 = {
  name:   'Paul Wilson',
  sex:    'M',
  height: 5.5,
  race:   'White'
}

james = Person.new person_1
paul = Person.new person_2

pp james
pp paul; puts




class Package
  def can_sell_each
    pp 'this item can be sold separately'
  end

  private

  def cannot_sell_each
    pp 'this item cannot be sold separately'
  end
end


Package.new.can_sell_each
Package.new.cannot_sell_each; puts



Package.new.send('can_sell_each')
Package.new.send('cannot_sell_each'); puts



Package.new.public_send('can_sell_each')
Package.new.public_send('cannot_sell_each')
