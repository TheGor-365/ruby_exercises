def double(number)
  yield(number)
end


double(16) { |number| pp number * 2 }
