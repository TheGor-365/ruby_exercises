hash = { bacon: "protein", apple: "fruit" }

pp hash
pp hash.map { |name, value| "#{name}='#{value}'" }
