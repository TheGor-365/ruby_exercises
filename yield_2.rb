def double(number)
  yield(number)
end

double(16) {|number| puts number * 2}
