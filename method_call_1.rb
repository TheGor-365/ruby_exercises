class User
  def initialize(name)
    @name = name
  end

  def hello
    pp "Hello, #{@name}"
  end

  def method_missing(_)
    hello
  end
end



user = User.new('Greg')

user.hello
user.send(:hello)
user.send :hello
user.public_send(:hello)
user.public_send :hello
user.method(:hello).call
user.method(:hello).()
user.method(:hello)[]
user.tap(&:hello)
:hello.to_proc.call(user)
eval('user.hello')
