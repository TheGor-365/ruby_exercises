class Message
  @@messages_sent = 0

  def initialize(from, to)
    @from, @to = from, to
    @@messages_sent += 1
  end
end

class Email < Message
  def initialize(from, to)
    super
  end
end



my_message = Message.new('Ian', 'Alex')
pp my_message
