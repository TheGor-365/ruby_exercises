hash = { bacon: "protein", apple: "fruit" }

pp hash.map { |name, value| "#{name}='#{value}'" }
