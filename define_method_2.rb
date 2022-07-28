class User
  def log_vk_auth
    Loggers::VK.new.send_message
  end

  def log_facebook_auth
    Loggers::Facebook.new.send_message
  end

  def log_twitter_auth
    Loggers::Twitter.new.send_message
  end

  %w[vk facebook twitter].each do |network|
    define_method "log_#{network}_auth" do
      "Loggers::#{network.capitalize}".constantize
    end
  end
end
