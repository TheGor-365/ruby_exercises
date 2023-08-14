def greeter
  yield
end

phrase = Proc.new { puts 'hey there' }
greeter(&phrase)
