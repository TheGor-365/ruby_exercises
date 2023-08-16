my_array = ['raindrops', :kettles, 'whiskers', :mittens, :packages]

symbol_filter = -> (element) { element.is_a? Symbol }
symbols       = my_array.select &symbol_filter


pp symbols
