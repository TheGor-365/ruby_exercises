string = 'white chocolate'
pp string.gsub('white', 'dark')

pp 'a1'.gsub(/\d/, '2')
pp 'a1'.gsub(/(\w)(\d)/, '\2\1')
