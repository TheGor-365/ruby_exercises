def double(num)
  yield(num)
end

double(16) {|x| puts x * 2}
