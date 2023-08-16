hash = {
  chocolate: 10,
  icecream:  20,
  shugar:    30
}

pp hash.each { |name, value| hash[name] = value * 5 }

puts



hash = {
  chocolate: 10,
  icecream:  20,
  shugar:    30
}

pp hash.transform_values { |value| value * 5 }

puts



hash = {
  chocolate: 10,
  icecream:  20,
  shugar:    30
}

pp hash.transform_keys { |name| name[0].to_sym }
