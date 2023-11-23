array_second = <<-RUBY
def second
  self[1]
end
RUBY

array = [ 1, 2, 3 ]

pp array.instance_eval(array_second)
pp array.second

str = 'ruby.devscoop.fr'

str.instance_eval do
  def /(delimiter)
    split(delimiter)
  end
end

pp str / '.'; puts




class User
  def initialize(email)
    @email = email
  end
end

user = User.new('ruby@devscoop.fr')

pp user.instance_eval('@email')
pp user.instance_eval { @email }; puts




class User
  def initialize(email)
    @email = email
  end

  private

  def secret_key
    'XX-XXXX-XXXX-XXXX'
  end
end

user = User.new('ruby@devscoop.fr')

pp user.instance_eval('secret_key')
pp user.instance_eval { secret_key }; puts




class KlassWithSecret
  def initialize
    @secret = 99
  end

  private

  def the_secret
    "Ssssh! The secret is #{@secret}."
  end
end

klass = KlassWithSecret.new

pp klass.instance_eval { @secret }
pp klass.instance_eval { the_secret }
pp klass.instance_eval {|obj| obj == self }
