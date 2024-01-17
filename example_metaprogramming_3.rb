module Configurable
  def self.with(*attrs)
    config_class = Class.new do
      attr_accessor *attrs
    end

    class_methods = Module.new do
      define_method :config do
        @config ||= config_class.new
      end

      def configure
        yield config
      end
    end

    Module.new do
      singleton_class.send :define_method, :included do |host_class|
        host_class.extend class_methods
      end
    end
  end
end

class MyApp
  include Configurable.with(:app_id, :title, :cookie_name)
end



result = MyApp.configure do |config|
  config.app_id = 'my_app'
  config.title  = 'My App'
  config.cookie_name = 'my_app_session'
end

pp result; puts

pp MyApp.config; puts
pp MyApp.config.title; puts
pp MyApp.config.app_id = 'not_my_app'
