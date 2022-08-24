[1, 1, 2].tally
# => { 1 => 2, 2 => 1 }
[1, 1, 2].map(&:even?).tally
# => { false => 2, true => 1 }



[1, 2, 2, 3].tally
# => { 1 => 1, 2 => 2, 3 => 1 }



%w(foo foo bar foo baz foo).tally
# => {"foo"=>4, "bar"=>1, "baz"=>1}



%w(foo foo bar foo baz foo).map { |s| s[0] }.tally
# => {“f” => 4, “b” => 2}



# %w(foo foo bar foo baz foo).tally_by { |s| s[0] }
# => {“f” => 4, “b” => 2}


list = [1, 2, 3]
list.group_by { |v| v.to_s }.transform_values(&:size)
list.group_by { |v| v.to_s }.map { |k, vs| [k, vs.size] }.to_h
list.group_by { |v| v.to_s }.to_h { |k, vs| [k, vs.size] }
list.each_with_object(Hash.new(0)) { |v, h| h[v.to_s] += 1 }



module Enumerable
  def tally_by(&function)
    function ||= -> v { v }

    each_with_object(Hash.new(0)) do |value, hash|
      hash[function.call(value)] += 1
    end
  end

  def tally
    tally_by(&:itself)
  end
end
