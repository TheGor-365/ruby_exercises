require_relative 'block_secrets_unzipper'
require_relative 'block_secrets_zipper'

Zipper.config do |config|
  config.extention = '.txt'

  config.processing = ->(content) { puts content.upcase }
end
