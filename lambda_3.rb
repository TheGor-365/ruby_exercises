strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda {|param| param.to_sym}
symbols = strings.collect(&symbolize)
print symbols
