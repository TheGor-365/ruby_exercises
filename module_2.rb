module Hi
  class Say_Hi
    def self.say_hi
      pp "hi \t#{Time.now}"
    end
    def self.say_bye
      pp "bye \t#{Time.now}"
    end
  end
end


Hi::Say_Hi.say_hi
Hi::Say_Hi.say_bye
