pp 'my string'.yield_self { |string| string.upcase }
pp 3.next.yield_self { |number| number **number }.to_s
