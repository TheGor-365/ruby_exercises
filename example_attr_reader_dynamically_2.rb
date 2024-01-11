def baseball
  @baseball ||= Component.new
end


class Component; end

class BaseClass
  def self.create_component(name:)
    class_eval <<~EOB
      attr_writer :#{name}
      def #{name}
        @#{name} ||= Component.new
      end
    EOB
  end

  create_component name: 'ball'
  create_component name: 'baseball'
end



pp component = BaseClass.new; puts

pp component.ball
pp component.baseball
