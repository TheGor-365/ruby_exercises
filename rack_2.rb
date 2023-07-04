require 'rackup'

Rack::Handler::Thin.run lambda { |env| [ 200, { 'Content-Type': 'text/plain' }, [ "Hello, the time is: #{Time.now}" ]] }
