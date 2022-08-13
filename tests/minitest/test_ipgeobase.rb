require_relative '../../ipgeobase'
require_relative './test_helper_ipgeobase'

class TestIpgeobase < Minitest::Test
  def test_lookup_data
    ip = '81.200.23.8'
    ip_meta = Ipgeobase.lookup(ip)

    assert ip_meta.country == 'Russia'
    assert ip_meta.city == 'Moscow'
    assert ip_meta.country_code == 'RU'
    assert ip_meta.lat == "55.7483"
    assert ip_meta.lon == "37.6171"
  end
end
