def get_website_contents
  pp '<body>'
  yield
  pp '</body>'
end

get_website_contents do
  pp 'something!!!'
  pp 'i want more'
end
