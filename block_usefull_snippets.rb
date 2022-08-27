def time
  start = Time.now
  yield
  Time.now - start
end

p time { "a" * 100000000 }
puts



p ({ a: 1 }.fetch(:a))
p ({ a: 1 }.fetch(:a) { 123 })
p ({ a: 1 }.fetch(:c) { 123 })
puts



def request_http(&on_complete)
  on_complete.call
end

request_http { puts "Done" }
