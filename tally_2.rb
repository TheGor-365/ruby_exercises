pp [1, 1, 2].tally
pp [1, 2, 2, 3].tally; puts




pp [1, 1, 2].map(&:even?).tally; puts




pp %w(foo foo bar foo baz foo).tally
pp %w(foo foo bar foo baz foo).map { |word| word[0] }.tally; puts




list = [1, 2, 3]

pp list.group_by { |value| value.to_s }.transform_values(&:size)
pp list.group_by { |value| value.to_s }.map { |name, value| [name, value.size] }.to_h
pp list.group_by { |value| value.to_s }.to_h { |name, value| [name, value.size] }

pp list.each_with_object(Hash.new(0)) { |value, hash| hash[value.to_s] += 1 }; puts




module Enumerable
  def tally_by(&function)
    function ||= -> value { value }

    each_with_object(Hash.new(0)) do |value, hash|
      hash[function.call(value)] += 1
    end
  end

  def tally
    tally_by(&:itself)
  end
end
