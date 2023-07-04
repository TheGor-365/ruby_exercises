string = "white chocolate"
p string.gsub("white", "dark")

p "a1".gsub(/\d/, "2")

p "a1".gsub(/(\w)(\d)/, '\2\1')
