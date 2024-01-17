module Configurable
  def self.included(host_class)
    host_class.extend ClassMethods
  end

  module ClassMethods
    def config
      @config ||= Configuration.new
    end

    def configure
      yield config
    end
  end

  class Configuration
    attr_accessor :app_id, :title, :cookie_name
  end
end

class MyApp
  include Configurable
end



result = MyApp.configure do |config|
  config.app_id = 'app'
  config.title  = 'App'
  config.cookie_name = 'app_session'
end

pp result; puts

pp MyApp.config; puts
pp MyApp.config.title; puts
pp MyApp.config.app_id = 'not_app'
