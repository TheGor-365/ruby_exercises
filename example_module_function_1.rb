module TheModule
  def one
    'one'
  end
  module_function :one
end

class TheClass
  include TheModule

  def call_one
    one
  end
end

pp TheModule.one

c = TheClass.new
pp c.call_one; puts



module TheModule
  def one
    'two'
  end
end

pp TheModule.one
pp c.call_one
