class NotifierService
  USER_FIELDS = [:name, :age]

  def initialize(notifier_type, message, user)
    @notifier_type, @message, @user = notifier_type, message, user
  end

  def notify
    @fields = user_fields
    send("notify_by_#{notifier_type}")
  end

  private

  attr_accessor :notifier_type, :user, :message

  def notify_by_email;    end
  def notify_by_sms;      end
  def notify_by_whatsapp; end

  def user_fields
    USER_FIELDS.each_with_object({}) do |field, memo|
      memo["#{field}"] = user.public_send(field)
    end
  end
end


class User
  def initialize(name, last_name, age)
    @name, @last_name, @age = name, last_name, age
  end

  def get_full_name
    name + " " + last_name
  end

  attr_accessor :name, :last_name

  private

  attr_reader :age

  def greet
    "Hi I am #{name} and I am #{age}"
  end
end


user = User.new('carl', 'smith', 29)
pp user; puts

notifier_service = NotifierService.new('sms', 'Hello there!!', user).notify
pp notifier_service
