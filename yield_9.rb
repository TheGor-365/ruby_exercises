def get_website_contents
  puts '<body>'
  yield
  puts '</body>'
end

get_website_contents do
  puts 'something!!!'
  puts 'i want more'
end
