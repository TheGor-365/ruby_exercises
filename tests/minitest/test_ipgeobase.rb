require_relative '../../ipgeobase_general'
require_relative './test_helper_ipgeobase'

class TestIpgeobase < Minitest::Test
  def test_lookup_data
    ip_meta = Ipgeobase.lookup('81.200.23.8')

    assert ip_meta.country == 'Russia'
    assert ip_meta.city == 'Moscow'
    assert ip_meta.country_code == 'RU'
    assert ip_meta.lat == 55.75
    assert ip_meta.lon == 37.62
  end
end
