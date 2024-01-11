class Component; end

class BaseClass
  def create_component(name)
    self.class.send(:attr_accessor, name)
    instance_variable_set("@#{name}", Component.new)
  end
end



pp component = BaseClass.new; puts

pp component.create_component 'ball'
pp component
pp component.create_component 'baseball'
pp component; puts

pp component.methods & [:ball, :baseball]
pp component.instance_variables; puts

pp component.ball
pp component.baseball; puts

pp component.ball = 1
pp component.baseball = 2
pp component.ball
pp component.baseball
