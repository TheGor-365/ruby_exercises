module Humans
  class Manager
    def say_hi
      pp 'Hi'
    end
  end

  class Hipster
    def say_hi
      pp 'Hey yo'
    end
  end

  class Jessie_Pinckman
    def say_hi
      pp 'Hi, bitch'
    end
  end
end


hipster = Humans::Hipster.new
hipster.say_hi


module Animals
  class Dog; end
  class Cat; end
end


cat = Animals::Cat.new
