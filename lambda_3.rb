strings = %w[ leonardo donatello raphael michaelangelo ]

symbolize = -> (param) { param.to_sym }
symbols = strings.collect(&symbolize)

pp symbols
