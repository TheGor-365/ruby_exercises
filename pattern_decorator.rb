class Notifier
  def notify(message)
    puts "send SMS message: #{message}"
  end
end



class BaseDecorator < Notifier
  def initialize(notifier)
    @notifier = notifier
  end

  def notify(message)
    raise NotImplementedError
  end
end



class EmailDecorator < BaseDecorator
  def notify(message)
    @notifier.notify(message)
    puts "send message to email: #{message}"
  end
end

class FacebookDecorator < BaseDecorator
  def notify(message)
    @notifier.notify(message)
    puts "send message to facebook: #{message}"
  end
end

class SlackDecorator < BaseDecorator
  def notify(message)
    @notifier.notify(message)
    puts "send message to slack: #{message}"
  end
end

class VKDecorator < BaseDecorator
  def notify(message)
    @notifier.notify(message)
    puts "send message to VK: #{message}"
  end
end



user_settings = {
  send_to_email:    true,
  send_to_facebook: false,
  send_to_slack:    true,
  send_to_VK:       true
}

chain = Notifier.new

chain = EmailDecorator.new(chain)    if user_settings[:send_to_email]
chain = FacebookDecorator.new(chain) if user_settings[:send_to_facebook]
chain = SlackDecorator.new(chain)    if user_settings[:send_to_slack]
chain = VKDecorator.new(chain)       if user_settings[:send_to_VK]

chain.notify('hello')
