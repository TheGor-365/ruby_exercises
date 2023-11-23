require 'open-uri'
require 'nokogiri'
require 'net/http'
require 'net/https'

uri = URI('https://httpbin.org')
get_path  = 'get'
post_path = 'post'

Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https', verify_mode: OpenSSL::SSL::VERIFY_NONE) do |http|
  request  = Net::HTTP::Get.new uri.request_uri + get_path
  response = http.request request

  puts response.body

  # cookie = response.response['set-cookie'].split('; ')[0]

  params = {
    test: true,
    hello: 'world'
  }

  request = Net::HTTP::Post.new uri.request_uri + post_path
  request.body = URI.encode_www_form(params)
  # request['Cookie'] = cookie

  response = http.request request

  puts response.body

  response.code == '200'
end
