require 'forwardable'

User = Struct.new(:first_name, :last_name)

class UserDecorator
  extend Forwardable

  def_delegators :@user, :first_name, :last_name

  def initialize(user)
    @user = user
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end


decorated_user_1 = UserDecorator.new(User.new('John', 'Doe'))
decorated_user_2 = UserDecorator.new(User.new('Gor', 'Khachatryan'))

pp decorated_user_1.first_name
pp decorated_user_1.last_name
pp decorated_user_1.full_name


puts


pp decorated_user_2.first_name
pp decorated_user_2.last_name
pp decorated_user_2.full_name
