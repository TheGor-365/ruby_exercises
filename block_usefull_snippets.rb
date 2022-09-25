def time
  start = Time.now
  yield
  Time.now - start
end

pp time { "a" * 10_000_000 }
puts



p ({ a: 1 }.fetch(:a))
p ({ a: 1 }.fetch(:a) { 123 })
p ({ a: 1 }.fetch(:c) { 123 })
puts



def request_http(&on_complete)
  pp on_complete.inspect
  on_complete.call
end

request_http { puts "Done" }
