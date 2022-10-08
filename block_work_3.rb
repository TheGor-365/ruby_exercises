def each
  i = 0
  while i < size
    yield at(i)
    i += 1
  end
end

[1, 2, 3].each do |num|
  print num
end
puts
puts


def each
  return to_enum(:each) unless block_given?

  i = 0
  while i < size
    yield at(i)
    i += 1
  end
end

[1, 2, 3].each do |num|
  print num
end
puts
puts

"foo bar baz".split { puts "block!" }


def each_explicit(&block)
  return to_enum(:each) unless block

  i = 0
  while i < size
    block.call at(i)
    i += 1
  end
end
puts


def run_proc_with_random_number(proc)
  proc.call(rand(0..6))
end

proc = Proc.new { |n| puts "#{n}!" }
run_proc_with_random_number(proc)
puts


def run_proc_with_random_number(&proc)
  proc.call(rand(0..6))
end
run_proc_with_random_number { |n| puts "#{n}!" }
puts


pp [1, 2, 3].map(&:to_s)
pp [1, 2, 3].map {|i| i.to_s }
pp [1, 2, 3].map {|i| i.send(:to_s) }
puts


class Symbol
  def to_proc
    Proc.new { |i| i.send(self) }
  end
end


def return_from_proc
  a = Proc.new { return 10 }.call
  puts "This will never be printed."
end
return_from_proc
puts


def return_from_lambda
  a = lambda { return 10 }.call
  puts "The lambda returned #{a}, and this will be printed."
end
return_from_lambda
