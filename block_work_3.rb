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
  pp number.to_s
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

my_proc = Proc.new { |number| pp "#{number}!" }

run_proc_with_random_number(my_proc)
puts



def run_proc_with_random_number(&proc)
  proc.call(rand(700...1600))
end

run_proc_with_random_number { |number| pp number * 23.15 }
puts



pp [1, 2, 3].map(&:to_s)
pp [1, 2, 3].map {|number| number.to_s }
pp [1, 2, 3].map {|number| number.send(:to_s) }
pp [1, 2, 3].map {|number| number.send :to_s }

pp %w[ words upcased ].map {|number| number.send :upcase }
puts


class Symbol
  def to_proc
    Proc.new { |number| number.send(self) }
  end
end

pp symbol = :symbol

pp symbol.to_proc



def return_from_proc
  ten = Proc.new { return 10 }.call
  puts "This #{ten} will never be printed."
end
return_from_proc
puts



def return_from_lambda
  ten = lambda { return 10 }.call
  puts "The lambda returned #{ten}, and this will be printed."
end
return_from_lambda
