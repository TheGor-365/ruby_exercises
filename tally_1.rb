list = %w[ a b b a c d d d e ]

list.group_by { |v| v }.map { |k, v| [k, v.size] }.to_h
#=> {"a"=>2, "b"=>2, "c"=>1, "d"=>3, "e"=>1}

list.each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }
#=> {"a"=>2, "b"=>2, "c"=>1, "d"=>3, "e"=>1}



hashes = [{name: "Meagan" }, { name: "Meagan" }, { name: "Lauren" }]

hashes.group_by(&:itself).map { |k, v| k.merge(count: v.length)}
#=> [{ :name => "Meagan", :count => 2}, { :name => "Lauren", :count => 1 }]



list = %w[ a b b a c d d d e ]
list.tally
#=> {"a"=>2, "b"=>2, "c"=>1, "d"=>3, "e"=>1}



hashes = [{name: "Meagan" }, { name: "Meagan" }, { name: "Lauren" }]
h.tally
#=> {{:name=>"Meagan"}=>2, {:name=>"Lauren"}=>1}

hashes.tally.map { |k, v| k.merge({count: v}) }
#=> [{:name=>"Meagan", :count=>2}, {:name=>"Lauren", :count=>1}
