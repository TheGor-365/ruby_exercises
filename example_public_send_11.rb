class Sender
  def initialize struct
    @struct = struct
  end

  def display
    pp @struct
  end

  def mem method_name, param_name
    public_send :display, @struct[param_name]
  end
end



User = Struct.new(:name, :job, :gender, keyword_init: true)
user = User.new(name: 'rob', job: 'hexlet', gender: 'm')
sender = Sender.new user

user.display

puts

sender.mem :display, :name
