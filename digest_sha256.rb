require 'digest'

abc =   Digest::SHA2.hexdigest 'abc'
abc_2 = Digest::SHA2.new(256).hexdigest 'abc'
abc_3 = Digest::SHA256.hexdigest 'abc'

pp abc
pp abc_2
pp abc_3

puts

abc_4 = Digest::SHA2.new(384).hexdigest 'abc'
abc_5 = Digest::SHA384.hexdigest 'abc'

pp abc_4
pp abc_5

puts

abc_6 = Digest::SHA2.new(512).hexdigest 'abc'
abc_7 = Digest::SHA512.hexdigest 'abc'

pp abc_6
pp abc_7

puts

sha2 = Digest::SHA2.new
pp sha2

sha2.update "ab"
pp sha2

sha2 << "c"
pp sha2

puts

pp sha2.hexdigest

sha2.reset
sha2 << "message"

pp sha2.hexdigest
