require_relative '../../ipgeobase_general'
require_relative './test_helper_ipgeobase_webmock'

class TestIpgeobase < Minitest::Test
  def test_api_url
    body = ''

    stub_request(:get, "http://www.ip-api.com/").to_return(status: 200, body: body)
  end

  def test_xml_data_get
    body = ''

    uri = Addressable::Template.new("http://ip-api.com/xml/81.200.23.8*}country,countryCode,city,lat,lon")

    stub_request(:any, uri).to_return(status: 200, body: body)
  end
end
