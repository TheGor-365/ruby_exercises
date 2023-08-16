def greeter
  yield
end

phrase = Proc.new { pp 'hey there' }
greeter(&phrase)
