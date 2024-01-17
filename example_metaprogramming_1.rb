module MyApp
  def self.config
    @config ||= Configuration.new
  end

  def self.configure
    yield config
  end

  class Configuration
    attr_accessor :app_id, :title, :cookie_name
  end
end



result = MyApp.configure do |config|
  config.app_id = 'my_app'
  config.title  = 'My App'
  config.cookie_name = 'my_app_session'
end

pp result; puts

pp MyApp.config; puts

pp MyApp.config.title
pp MyApp.config.app_id = 'not_my_app'; puts

title = MyApp.configure do |config|
  config.title
end

pp title
