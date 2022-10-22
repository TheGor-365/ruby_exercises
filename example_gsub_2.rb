str = "white chocolate"
p str.gsub("white", "dark")

p "a1".gsub(/\d/, "2")

p "a1".gsub(/(\w)(\d)/, '\2\1')
