module ThePresent
  def now
    pp "it's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)"
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
