hash = { bacon: "protein", apple: "fruit" }

pp hash.map { |key, value| "#{key}='#{value}'" }
