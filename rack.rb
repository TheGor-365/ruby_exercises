require 'rackup'

class MyApp
  def call(_env)
    [200, {'Content-Type' => 'text/html'}, ['Hello']]
  end
end

Rackup::Handler::WEBrick.run MyApp.new, :Port => 3000
