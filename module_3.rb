module Humans
  class Manager

    def say_hi
      puts "Hi"
    end
  end

  class Hipster

    def say_hi
      puts "Hiiiii, yo!"
    end
  end

  class Jessie_Pincman

    def say_hi
      puts "Hi, bitch!"
    end
  end
end

module Animals

  class Dog
  end

  class Cat

    def run
      puts "Run"
    end
  end
end

hipster = Humans::Hipster.new
hipster.say_hi

cat = Animals::Cat.new
cat.run
