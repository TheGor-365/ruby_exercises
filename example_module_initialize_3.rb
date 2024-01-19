module HelloWorld
  def self.included(base)
    define_method :hello do
      "Hello, world from #{base}"
    end
  end
end


class Test
  include HelloWorld
end



pp Test.new.hello; puts






def make_module
  mod = Module.new

  mod.module_eval do
    def hello
      'Hey AppSignal world'
    end
  end

  mod
end


class Test
  include make_module
end

pp Test.new.hello
