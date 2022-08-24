module Hi
  class Say_Hi
    def self.say_hi
      puts "Hi"
    end
  end
end

pp Hi::Say_Hi.say_hi
