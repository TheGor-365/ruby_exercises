def each
  number = 0
  while number < size
    yield at(number)
    number += 1
  end
end

[1, 2, 3].each do |number|
  puts number
end
puts



def each
  return to_enum(:each) unless block_given?

  number = 0
  while number < size
    yield at(number)
    number += 1
  end
end

[1, 2, 3].each do |number|
  puts number
end
puts


"foo bar baz".split { puts "block!" }


def each_explicit(&block)
  return to_enum(:each) unless block

  number = 0
  while number < size
    block.call at(number)
    number += 1
  end
end
puts



def run_proc_with_random_number(proc)
  proc.call(rand(0..6))
end

proc = Proc.new { |number| puts "#{number}!" }
run_proc_with_random_number(proc)
puts



def run_proc_with_random_number(&proc)
  proc.call(rand(0..6))
end
run_proc_with_random_number { |number| puts "#{number}!" }
puts



pp [1, 2, 3].map(&:to_s)
pp [1, 2, 3].map {|number| number.to_s }
pp [1, 2, 3].map {|number| number.send(:to_s) }
puts


class Symbol
  def to_proc
    Proc.new { |number| number.send(self) }
  end
end



def return_from_proc
  ten = Proc.new { return 10 }.call
  puts "This will never be printed."
end
return_from_proc
puts



def return_from_lambda
  ten = lambda { return 10 }.call
  puts "The lambda returned #{ten}, and this will be printed."
end
return_from_lambda
